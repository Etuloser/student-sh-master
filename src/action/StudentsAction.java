package action;

import java.text.SimpleDateFormat;
import java.util.List;

import entity.Students;
import service.StudentsDAO;
import service.impl.StudentsDAOImpl;

//ѧ��Action��
public class StudentsAction extends SuperAction {

	private static final long serialVersionUID = 1L;
	
	//��ѯ����ѧ������
	public String query()
	{
		StudentsDAO sdao = new StudentsDAOImpl();
		List<Students> list = sdao.queryAllStudents();
		//�Ž�session��
		if(list!=null&&list.size()>0)
		{
			session.setAttribute("students_list", list);	
		}
		return "query_success";
	}
	

	//ɾ��ѧ������
	public String delete()
	{
		StudentsDAO sdao = new StudentsDAOImpl();
		String sid = request.getParameter("sid");
		sdao.deleteStudents(sid);//����ɾ������
		return "delete_success";
	}
	
	//���ѧ��
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
	
	//�޸�ѧ�����϶���
	public String modify()
	{
		//��ô��ݹ�����ѧ�����
		String sid = request.getParameter("sid");
		StudentsDAO sdao = new StudentsDAOImpl();
		Students s = sdao.queryStudentsBySid(sid);
		//�����ڻỰ��
		session.setAttribute("modify_students", s);
		return "modify_success";
	}
	
	//�鿴ѧ����������
	public String resume()
	{
		//��ô��ݹ�����ѧ�����
		String sid = request.getParameter("sid");
		StudentsDAO sdao = new StudentsDAOImpl();
		Students s = sdao.queryStudentsBySid(sid);
		//�����ڻỰ��
		session.setAttribute("resume_students", s);
		return "resume_success";
	}
	
	//�����޸ĺ��ѧ�����϶���
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
	
	//ģ����ѯaction����
	public String search() 
	{
		StudentsDAO sdao = new StudentsDAOImpl();
		String sname = request.getParameter("sname");
		List<Students> list = sdao.searchStudents(sname);
		session.setAttribute("students_list", list);
		return "search_success";
	}
}
