package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import factory.ConnectionFactory;
import bean.BookBean;
import bean.OrderBean;

public class BookDetailDAOImpl implements BookDetailDAO {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private String dbStatus;


	@Override
	public String bookDetail(BookBean bBean) {
		try {
			con = (Connection) ConnectionFactory.getInstance().getConnection();
			String sql = "INSERT INTO BookDetail (bookname,publishername,authorname,price,edition,quantity,category) values (?, ?, ?, ?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, bBean.getBookname());
			ps.setString(2, bBean.getPublishername());
			ps.setString(3, bBean.getAuthorname());
			ps.setString(4, bBean.getPrice());
			ps.setString(5, bBean.getEdition());
			ps.setString(6, bBean.getQuantity());
			ps.setString(7, bBean.getCategory());
			int row = ps.executeUpdate();
			if (row > 0) {
				dbStatus = "Successfully Saved";
			} else {
				dbStatus = "Try Again";
			}
		} catch (SQLException ex) {
			dbStatus = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} catch (Exception ex) {
			dbStatus = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		}
		return dbStatus;
		
	}


	@Override
	public List<BookBean> displayBook() {
		con=ConnectionFactory.getInstance().getConnection();
		List<BookBean> bList= new ArrayList<BookBean>();
		try{
			ps=con.prepareStatement("select * from BookDetail");
			rs=ps.executeQuery();
			while(rs.next()){
				BookBean buBean=new BookBean();
				buBean.setBookId(rs.getInt(1));
				buBean.setBookname(rs.getString(2));
				buBean.setPublishername(rs.getString(3));
				buBean.setAuthorname(rs.getString(4));
				buBean.setPrice(rs.getString(5));
				buBean.setEdition(rs.getString(6));
				buBean.setQuantity(rs.getString(7));
				buBean.setCategory(rs.getString(8));
				buBean.setSrc(rs.getString(9));
				
				bList.add(buBean);
			}
		}
			catch(Exception e){
				e.printStackTrace();
			}
		return bList;
	
	}


	@Override
	public String updateBook(BookBean bBean) {
		try{
			con=ConnectionFactory.getInstance().getConnection();
			String sql="Update BookDetail set bookname=?,publishername=?,authorname=?,price=?,edition=?,quantity=?,category=?,src=? where bookId=?";
			ps=con.prepareStatement(sql);
			ps.setString(1,bBean.getBookname());
			ps.setString(2, bBean.getPublishername());
			ps.setString(3,bBean.getAuthorname());
			ps.setString(4, bBean.getPrice());
			ps.setString(5, bBean.getEdition());
			ps.setString(6,bBean.getQuantity());
			ps.setString(7, bBean.getCategory());
			ps.setInt(8, bBean.getBookId());
			ps.setString(9, bBean.getSrc());
			
			int row=ps.executeUpdate();
			if(row>0){
				dbStatus="update succesful";
			}
			else{
				dbStatus="update failed";
			}}
			catch(Exception ex){
				ex.printStackTrace();
			}
			return dbStatus;
	}
	
	
	@Override
	public BookBean displayBookInfo(String bookname) {
		con=ConnectionFactory.getInstance().getConnection();
		BookBean buBean=new BookBean();
		try{
			ps=con.prepareStatement("select * from BookDetail where bookname=?");
			ps.setString(1, bookname);
			
			rs=ps.executeQuery();
			while(rs.next()){
				
				buBean.setBookId(rs.getInt(1));
				buBean.setBookname(rs.getString(2));
				buBean.setPublishername(rs.getString(3));
				buBean.setAuthorname(rs.getString(4));
				buBean.setPrice(rs.getString(5));
				buBean.setEdition(rs.getString(6));
				buBean.setQuantity(rs.getString(7));
				buBean.setCategory(rs.getString(8));
				buBean.setSrc(rs.getString(9));
			
			}
		}
			catch(Exception e){
				e.printStackTrace();
			}
		return buBean;
	
	}


	@Override
	public String placeOrder(OrderBean oBean) {
		
		try{
			con=(Connection)ConnectionFactory.getInstance().getConnection();
			ps=con.prepareStatement("insert into orderDetail(bookID,BookName,UserName) values(?,?,? );");
			
			ps.setString(1, oBean.getBookID());
			ps.setString(2, oBean.getBookName());
			ps.setString(3, oBean.getUserName());
			int row=ps.executeUpdate();
			if(row>0){
				
				ps=con.prepareStatement("update BookDetail set quantity=quantity-1 where bookId=?;" );
				ps.setString(1, oBean.getBookID());
				int row2=ps.executeUpdate();
				if(row2>0){
					dbStatus="Order placed Successfully ";
					
				}
				else{
					dbStatus="order couldnot be placed";
					
				}
			}
			else{
				
				dbStatus="order couldnot be placed";
			}
			
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return dbStatus;
	}


	@Override
	public List<BookBean> searchCategory(String category) {
		con=(Connection)ConnectionFactory.getInstance().getConnection();
		List<BookBean> bList= new ArrayList<BookBean>();
		try{
			ps=con.prepareStatement("select * from BookDetail where category=?;");
			ps.setString(1, category);
			rs=ps.executeQuery();
			while(rs.next()){
				BookBean buBean=new BookBean();
				buBean.setBookId(rs.getInt(1));
				buBean.setBookname(rs.getString(2));
				buBean.setPublishername(rs.getString(3));
				buBean.setAuthorname(rs.getString(4));
				buBean.setPrice(rs.getString(5));
				buBean.setEdition(rs.getString(6));
				buBean.setQuantity(rs.getString(7));
				buBean.setCategory(rs.getString(8));
				bList.add(buBean);
				
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return bList;
	}

	
	
}
