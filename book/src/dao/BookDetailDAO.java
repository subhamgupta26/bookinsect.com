package dao;




import java.util.List;

import bean.BookBean;
import bean.OrderBean;


public interface BookDetailDAO {

	public String bookDetail(BookBean bBean);
	public List<BookBean> displayBook();
	public String updateBook(BookBean bBean);
	public BookBean displayBookInfo(String bookname);
	public String placeOrder(OrderBean oBean);
	public List<BookBean> searchCategory(String category);
}
