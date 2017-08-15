package dao;

import java.util.List;

import bean.UserBean;

public interface UserDAO {
	
	public String signIN(UserBean u);
	public UserBean logIn(UserBean u);
	public String edit(UserBean u);
	public List<UserBean> displayUser();
}
