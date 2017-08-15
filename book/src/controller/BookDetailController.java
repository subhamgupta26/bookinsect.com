package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BookDetailDAOImpl;
import bean.BookBean;


@WebServlet("/BookDetailController")
public class BookDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 String dbStatus;
     BookDetailDAOImpl bd= new BookDetailDAOImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookBean bBean = new BookBean();
		bBean.setBookname(request.getParameter("bookname"));
		bBean.setPublishername(request.getParameter("publishername"));
		bBean.setAuthorname(request.getParameter("authorname"));
		bBean.setPrice(request.getParameter("price"));
		bBean.setEdition(request.getParameter("edition"));
		bBean.setQuantity(request.getParameter("quantity"));
		bBean.setCategory(request.getParameter("category"));
		/********************* SAVE ******************************/
		String btnSave = request.getParameter("btnSave");
		if (btnSave != null) {
			dbStatus = bd.bookDetail(bBean);
			if (!dbStatus.equals(null)) {
				HttpSession session = request.getSession();
				session.setAttribute("dbStatus", dbStatus);
				response.sendRedirect("bookdetail.jsp");
			}
	}
       /**************DISPLAY****************/
		String btnDisplay=request.getParameter("btnDisplay");
		
		if(btnDisplay!=null){
			List<BookBean> bList=bd.displayBook();
			if(bList!=null){
				getServletContext().setAttribute("bList", bList);
				RequestDispatcher rd=request.getRequestDispatcher("bookdisplay.jsp");
				rd.forward(request,response);
			}
		}
		/***************update***********/
		String btnUpdate=request.getParameter("btnUpdate");
		if(btnUpdate!=null){
			bBean.setBookId(Integer.parseInt(request.getParameter("editBookId")));
			bBean.setBookname((request.getParameter("editbookname")));
			bBean.setPublishername((request.getParameter("editpublishername")));
			bBean.setAuthorname((request.getParameter("editauthorname")));
			bBean.setPrice((request.getParameter("editprice")));
			bBean.setEdition((request.getParameter("editedition")));
			bBean.setQuantity((request.getParameter("editQuantity")));
			bBean.setCategory((request.getParameter("editcategory")));
			bBean.setSrc((request.getParameter("editsrc")));
			
			
			dbStatus=bd.updateBook(bBean);
			if(dbStatus!=null){
				HttpSession session=request.getSession();
				session.setAttribute("dbStatus",dbStatus);
				response.sendRedirect("bookdisplay.jsp");
			}
		}
		
		/////////////////////////bookInformation/////////////////
		
	String bookname=request.getParameter("bookname");
		if(bookname!=null){
			BookBean bBean2=bd.displayBookInfo(bookname);
			if(bBean2!=null){
				request.setAttribute("bBean2", bBean2);
				RequestDispatcher rd=request.getRequestDispatcher("bookInfo.jsp");
				rd.forward(request,response);
				/*HttpSession session=request.getSession();
				session.setAttribute("bBean2", bBean2);
				response.sendRedirect("bookInfo.jsp");*/
			}
		}
		
		
		
		////////////////////////search/////////////////////
		String category=request.getParameter("Category");
		if(category !=null){
			List<BookBean> bList=new ArrayList<BookBean>();
			bList=bd.searchCategory(category);
			if(bList!=null){
				getServletContext().setAttribute("bList", bList);
				RequestDispatcher rd=request.getRequestDispatcher("searchResult.jsp");
				rd.forward(request,response);
			}
		}
	}
	}



