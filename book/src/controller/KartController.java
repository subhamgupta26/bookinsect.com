package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.OrderBean;
import dao.KartDAO;
import dao.KartDAOImpl;


@WebServlet("/KartController")
public class KartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
     KartDAO kd=new KartDAOImpl(); 
     ArrayList<OrderBean> al=new ArrayList<OrderBean>();
     String dbStatus;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("btnKart") !=null){
			String user=request.getParameter("username");
			
			al=kd.fetchOrder(user);
			if(al!=null){
				getServletContext().setAttribute("al", al);
				RequestDispatcher rd=request.getRequestDispatcher("orderResult.jsp");
				rd.forward(request,response);
				
			}
		}
		
		if(request.getParameter("btnReturn") !=null){
			String user=request.getParameter("username");
			
			al=kd.fetchOrder(user);
			if(al!=null){
				getServletContext().setAttribute("al", al);
				RequestDispatcher rd=request.getRequestDispatcher("returnResult.jsp");
				rd.forward(request,response);
				
			}
		}
		
		if(request.getParameter("btnReturn2")!=null){
			
			String bookID=request.getParameter("bookId");
			String orderID=request.getParameter("orderId");
			
			dbStatus=kd.returnOrder(orderID,bookID);
			if(dbStatus!=null){
				request.setAttribute("dbStatus", dbStatus);
				RequestDispatcher rd=request.getRequestDispatcher("returnResult.jsp");
				rd.forward(request, response);
			}
			
			
			
		}
	}

}
