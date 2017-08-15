package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import factory.ConnectionFactory;
import bean.UserBean;

public class UserDAOImpl implements UserDAO {
	
	Connection con;
	PreparedStatement pst;
	ResultSet rs;
	String dbStatus;
	

	@Override
	public String signIN(UserBean u) {
		// TODO Auto-generated method stub
		try{
			
		con=(Connection)ConnectionFactory.getInstance().getConnection();
		pst=con.prepareStatement("insert into userDetails values(?,?,?,?,?,?,?,?,?,?,?,?,?);");
		pst.setString(1, u.getUserID());
		pst.setString(2, u.getPassword());
		pst.setString(3, u.getFirstName());
		pst.setString(4, u.getLastName());
		pst.setString(5, u.getEmailID());
		pst.setString(6, u.getGender());
		pst.setString(7, u.getAddress());
		pst.setString(8, u.getAddress2());
		pst.setString(9, u.getCity());
		pst.setString(10, u.getState());
		pst.setString(11, u.getAge());
		pst.setString(12, u.getPincode());
		pst.setString(13, u.getMobile());
		int temp=pst.executeUpdate();
		if(temp>0){
			dbStatus="User Created";
		}
		else{
			
			dbStatus="FAILED";
		}
		
		pst.close();
		con.close();
		
		
		
		
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return dbStatus;
	}


	@Override
	public UserBean logIn(UserBean u) {
		// TODO Auto-generated method stub
		
		try{
			
			con=(Connection)ConnectionFactory.getInstance().getConnection();
			pst=con.prepareStatement("select * from userDetails where userID=? and password=?;");
			pst.setString(1, u.getUserID());
			pst.setString(2, u.getPassword());
			rs=pst.executeQuery();
			
			if(rs.next()){
				
				
					u.setValid(true);
					u.setFirstName(rs.getString(3));
					u.setLastName(rs.getString(4));
					u.setEmailID(rs.getString(5));
					u.setGender(rs.getString(6));
					u.setAddress(rs.getString(7));
					u.setAddress2(rs.getString(8));
					u.setCity(rs.getString(9));
					u.setState(rs.getString(10));
					u.setAge(rs.getString(11));
					u.setPincode(rs.getString(12));
					u.setMobile(rs.getString(13));
					
					
					
				}
				else{
					u.setValid(false);
				}
			
			rs.close();
			pst.close();
			con.close();
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return u;
		
		
	}


	@Override
	public String edit(UserBean u) {
		// TODO Auto-generated method stub
		try{
		con=(Connection)ConnectionFactory.getInstance().getConnection();
		pst=con.prepareStatement("Update userDetails set firstName=?,lastName=?,password=?,address=?,address2=?,city=?,state=?,pincode=?,phone=? where userID=?");
		pst.setString(1, u.getFirstName());
		pst.setString(2, u.getLastName());
		pst.setString(3, u.getPassword());
		pst.setString(4, u.getAddress());
		pst.setString(5, u.getAddress2());
		pst.setString(6, u.getCity());
		pst.setString(7, u.getState());
		pst.setString(8, u.getPincode());
		pst.setString(9,u.getMobile());
		pst.setString(10, u.getUserID());
		
		int temp=pst.executeUpdate();
		if(temp >0){
			dbStatus="Update Sucessful,please login to continue";
		}
		else{
			dbStatus="Update Failed";
		}
		
		pst.close();
		con.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return dbStatus;
	}
	

	@Override
	public List<UserBean> displayUser() {
	con=ConnectionFactory.getInstance().getConnection();
	List<UserBean> eList=new ArrayList<UserBean>();
	try{
		pst=con.prepareStatement("Select * from userDetails");
		rs=pst.executeQuery();
		while(rs.next()){
			UserBean euBean=new UserBean();
			euBean.setUserID(rs.getString(1));
			euBean.setFirstName(rs.getString(2));
			euBean.setLastName(rs.getString(3));
			euBean.setEmailID(rs.getString(4));
			euBean.setGender(rs.getString(5));
			euBean.setPassword(rs.getString(6));
			euBean.setAddress(rs.getString(7));
			euBean.setAddress2(rs.getString(8));
			euBean.setCity(rs.getString(9));
			euBean.setState(rs.getString(10));
			euBean.setAge(rs.getString(11));
			euBean.setPincode(rs.getString(12));
			euBean.setMobile(rs.getString(13));
			eList.add(euBean);
		}
	}
		catch(Exception e) {
			e.printStackTrace();
			
		}
	
		return eList;
	}
	

}
