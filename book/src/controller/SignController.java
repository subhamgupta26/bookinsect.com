package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import dao.UserDAOImpl;
import bean.UserBean;

@WebServlet("/SignController")
public class SignController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	UserDAO ud=new UserDAOImpl();
	List<UserBean> uList=new ArrayList<UserBean>();
	String dbStatus;
	
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		/////////////////////////SAVE/////////////////////
		String btnSave=request.getParameter("btnSave");
		if(btnSave != null)
		{
		
			/*if(request.getParameter("password")!=request.getParameter("confirmpassword")){
				
				String s="Password and ConfirmPassword must be same ";
				request.setAttribute("error", s);
				RequestDispatcher rd=request.getRequestDispatcher("signUp.jsp");
				rd.forward(request, response);
			}
			else
			{*/
			UserBean u=new UserBean();
			u.setUserID(request.getParameter("emailid"));
			u.setPassword(request.getParameter("password"));
			u.setFirstName(request.getParameter("firstname"));
			u.setLastName(request.getParameter("lastname"));
			u.setEmailID(request.getParameter("emailid"));
			u.setGender(request.getParameter("gender"));
			u.setAddress(request.getParameter("addressline1"));
			u.setAddress2(request.getParameter("addressline2"));
			u.setCity(request.getParameter("city"));
			u.setState(request.getParameter("state"));
			u.setAge(request.getParameter("age"));
			u.setPincode(request.getParameter("pincode"));
			u.setMobile(request.getParameter("mobile"));
			dbStatus=ud.signIN(u);
			if(dbStatus!=null){
				HttpSession session=request.getSession();
				session.setAttribute("dbStatus", dbStatus);
				response.sendRedirect("login.jsp");
			}
			}
		//}
		///////////////////SAVE////////////////////////////////
		
		////////////////////////////LOGIN///////////////////////////////
		
		String logIn=request.getParameter("btnLogIn");
		if(logIn != null){
			UserBean ub=new UserBean();
			ub.setUserID(request.getParameter("loginid"));
			ub.setPassword(request.getParameter("password"));
			ub=ud.logIn(ub);
			if(!ub.isValid()){
				
					String msg="Username or Password Didnt match";
					HttpSession session=request.getSession();
					session.setAttribute("dbStatus",msg);
					response.sendRedirect("login.jsp");
			}
				
				else{
					
					HttpSession session=request.getSession();
					session.setAttribute("loggedUser",ub);
					response.sendRedirect("rightBar.jsp");
					
				}
			}
			
		////////////////////////LOGIN///////////////////////
		
		/************************DISPLAY***********/
		String btnDisplay=request.getParameter("btnDisplay");
		if(btnDisplay!= null){
			List<UserBean> eList=ud.displayUser();
			if(eList!= null){
				getServletContext().setAttribute("eList", eList);
				RequestDispatcher rd=request.getRequestDispatcher("displayUser.jsp");
				rd.forward(request,response);
			}
			
		}
		
	}

}
