package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.UserBean;
import dao.UserDAO;
import dao.UserDAOImpl;


@WebServlet("/EditController")
public class EditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    UserDAO ud=new UserDAOImpl(); 
    String dbStatus;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		if(request.getParameter("btnEdit")!=null){
			UserBean u=new UserBean();
			
			u.setUserID(request.getParameter("userid"));
			u.setFirstName(request.getParameter("firstname"));
			u.setLastName(request.getParameter("lastname"));
			u.setPassword(request.getParameter("password"));
			
			u.setAddress(request.getParameter("address"));
			u.setAddress2(request.getParameter("address2"));
			u.setCity(request.getParameter("city"));
			u.setState(request.getParameter("state"));
			u.setPincode(request.getParameter("pincode"));
			u.setMobile(request.getParameter("mobile"));
			
			dbStatus=ud.edit(u);
			if(dbStatus !=null){
				HttpSession session=request.getSession();
				session.setAttribute("dbStatus", dbStatus);
				response.sendRedirect("edit.jsp");
			}
			
			
		}
		
	}

}
