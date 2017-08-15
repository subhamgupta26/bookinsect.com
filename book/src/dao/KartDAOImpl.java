package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.OrderBean;
import factory.ConnectionFactory;

public class KartDAOImpl implements KartDAO {
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	String dbStatus;

	@Override
	public ArrayList<OrderBean> fetchOrder(String userName) {
		// TODO Auto-generated method stub
		ArrayList<OrderBean> al=new ArrayList<OrderBean>();
		con=(Connection)ConnectionFactory.getInstance().getConnection();
		try{
		pst=con.prepareStatement("select * from orderDetail where userName=?;");
		pst.setString(1, userName);
		rs=pst.executeQuery();
		while(rs.next()){
			OrderBean oBean=new OrderBean();
			oBean.setBookID(rs.getString(1));
			oBean.setBookName(rs.getString(2));
			oBean.setOrderID(String.valueOf(rs.getInt(4)));
			al.add(oBean);
			
		}
			
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return al;
	}

	@Override
	public String returnOrder(String orderID,String bookID) {
		
		con=(Connection)ConnectionFactory.getInstance().getConnection();
		try{
		pst=con.prepareStatement("delete from orderDetail where orderID=?;");
		pst.setInt(1, Integer.parseInt(orderID));
		int row=pst.executeUpdate();
		if(row>0){
			
			pst=con.prepareStatement("update BookDetail set quantity=quantity+1 where bookId=?;" );
			pst.setString(1, bookID);
			int row2=pst.executeUpdate();
			if(row2>0){
				dbStatus="Request for Return Received";
				
			}
			else{
				dbStatus="Cannot be Returned at this moment";
				
			}
		}
		else{
			dbStatus="Cannot be Returned at this moment";
		}
		
		}
		catch(Exception e){
		e.printStackTrace();	
		}
			return dbStatus;
		}

	

}
