package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDetailDAO;
import dao.BookDetailDAOImpl;
import bean.OrderBean;


@WebServlet("/BuyController")
public class BuyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	BookDetailDAO bud=new BookDetailDAOImpl();
	String dbStatus=null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("btnBuy")!=null){
			OrderBean oBean=new OrderBean();
			oBean.setBookID(request.getParameter("bookId"));
			oBean.setBookName(request.getParameter("bookname"));
			
			oBean.setUserName(request.getParameter("userName"));
			dbStatus=bud.placeOrder(oBean);
			if(dbStatus!=null){
				request.setAttribute("dbStatus", dbStatus);
				RequestDispatcher rd=request.getRequestDispatcher("bookInfo.jsp");
				rd.forward(request, response);
				
			}
			
			
			
		}
		
	}

}
