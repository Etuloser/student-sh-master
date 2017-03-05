package action;

import java.text.SimpleDateFormat;
import java.util.List;

import entity.Students;
import service.StudentsDAO;
import service.impl.StudentsDAOImpl;

//学生Action类
public class StudentsAction extends SuperAction {

	private static final long serialVersionUID = 1L;
	
	//查询所有学生动作
	public String query()
	{
		StudentsDAO sdao = new StudentsDAOImpl();
		List<Students> list = sdao.queryAllStudents();
		//放进session中
		if(list!=null&&list.size()>0)
		{
			session.setAttribute("students_list", list);	
		}
		return "query_success";
	}
	

	//删除学生动作
	public String delete()
	{
		StudentsDAO sdao = new StudentsDAOImpl();
		String sid = request.getParameter("sid");
		sdao.deleteStudents(sid);//调用删除方法
		return "delete_success";
	}
	
	//添加学生
	public String add() throws Exception
	{
		Students s = new Students();
		s.setSname(request.getParameter("sname"));
		s.setGender(request.getParameter("gender"));
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		s.setBirthday(sdf.parse(request.getParameter("birthday")));
		s.setAddress(request.getParameter("address"));
		s.setSpecialty(request.getParameter("specialty"));
		s.setSage(request.getParameter("sage"));
		s.setEducation(request.getParameter("education"));
		s.setType(request.getParameter("type"));
		s.setGraduation(request.getParameter("graduation"));
		s.setCertificate(request.getParameter("certificate"));
		s.setHeight(request.getParameter("height"));
		s.setSchool(request.getParameter("school"));
		s.setMarry(request.getParameter("marry"));
		s.setDriver(request.getParameter("driver"));
		s.setPhone(request.getParameter("phone"));
		s.setQq(request.getParameter("qq"));
		s.setVchat(request.getParameter("vchat"));
		StudentsDAO sdao = new StudentsDAOImpl();
		sdao.addStudents(s);
		return "add_success";
	}
	
	//修改学生资料动作
	public String modify()
	{
		//获得传递过来的学生编号
		String sid = request.getParameter("sid");
		StudentsDAO sdao = new StudentsDAOImpl();
		Students s = sdao.queryStudentsBySid(sid);
		//保存在会话中
		session.setAttribute("modify_students", s);
		return "modify_success";
	}
	
	//查看学生简历动作
	public String resume()
	{
		//获得传递过来的学生编号
		String sid = request.getParameter("sid");
		StudentsDAO sdao = new StudentsDAOImpl();
		Students s = sdao.queryStudentsBySid(sid);
		//保存在会话中
		session.setAttribute("resume_students", s);
		return "resume_success";
	}
	
	//保存修改后的学生资料动作
	public String save() throws Exception
	{
		Students s = new Students();
		s.setSid(request.getParameter("sid"));
		s.setSname(request.getParameter("sname"));
		s.setGender(request.getParameter("gender"));
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		s.setBirthday(sdf.parse(request.getParameter("birthday")));
		s.setAddress(request.getParameter("address"));
		s.setSpecialty(request.getParameter("specialty"));
		s.setSage(request.getParameter("sage"));
		s.setEducation(request.getParameter("education"));
		s.setType(request.getParameter("type"));
		s.setGraduation(request.getParameter("graduation"));
		s.setCertificate(request.getParameter("certificate"));
		s.setHeight(request.getParameter("height"));
		s.setSchool(request.getParameter("school"));
		s.setMarry(request.getParameter("marry"));
		s.setDriver(request.getParameter("driver"));
		s.setPhone(request.getParameter("phone"));
		s.setQq(request.getParameter("qq"));
		s.setVchat(request.getParameter("vchat"));
		StudentsDAO sdao = new StudentsDAOImpl();
		sdao.updateStudents(s);
		return "save_success";
	}
	
	//模糊查询action部分
	public String search() 
	{
		StudentsDAO sdao = new StudentsDAOImpl();
		String sname = request.getParameter("sname");
		List<Students> list = sdao.searchStudents(sname);
		session.setAttribute("students_list", list);
		return "search_success";
	}
}
