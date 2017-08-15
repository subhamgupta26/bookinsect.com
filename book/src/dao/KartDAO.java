package dao;

import java.util.ArrayList;

import bean.OrderBean;

public interface KartDAO {

	public ArrayList<OrderBean> fetchOrder(String userName);
	public String returnOrder(String orderID,String bookID);
}
