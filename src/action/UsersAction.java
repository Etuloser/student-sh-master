package action;

import org.apache.struts2.interceptor.validation.SkipValidation;

import com.opensymphony.xwork2.ModelDriven;

import entity.Users;
import service.UsersDAO;
import service.impl.UsersDAOImpl;

public class UsersAction extends SuperAction implements ModelDriven<Users> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Users user = new Users();
	
	//�û���¼����
	public String login()
	{
		UsersDAO udao = new UsersDAOImpl();
		if(udao.usersLogin(user))
		{
			//��session�б����¼�ɹ����û���
			session.setAttribute("loginUserName", user.getUsername());
			return "login_success";
		}
		else
		{
			return "login_failure";
		}
	}
	
	@SkipValidation
	//�û�ע������
	public String logout()
	{
		if(session.getAttribute("loginUserName")!=null)
		{
			session.removeAttribute("loginUserName");
		}
		return "logout_success";
	}
	
	
	
	@Override
	public void validate() {
		// TODO Auto-generated method stub
		//�û�������Ϊ��
		if("".equals(user.getUsername().trim()))
		{
			this.addFieldError("usernameError", "�û�������Ϊ�գ�");
		}
		if(user.getPassword().length()<6)
		{
			this.addFieldError("passwordError", "���볤�Ȳ�����6λ��");
		}
	}

	@Override
	public Users getModel() {
		// TODO Auto-generated method stub
		return this.user;
	}

}
