package entity;

import java.util.Date;

//—ß…˙¿‡
public class Students {

	private String sid;
	private String sname;
	private String gender;
	private Date birthday;
	private String address;
	private String specialty;
	private String sage;
	private String education;
	private String type;
	private String graduation;
	private String certificate;
	private String height;
	private String school;
	private String marry;
	private String driver;
	private String phone;
	private String qq;
	private String vchat;
	
	public Students()
	{
		
	}
	
	public Students(String sid, String sname, String gender, Date birthday, String address, String specialty, String sage, String education, String type, String graduation, String certificate, String height, String school, String marry,String driver,String phone,String qq,String vchat) {
		//super();
		this.sid = sid;
		this.sname = sname;
		this.gender = gender;
		this.birthday = birthday;
		this.address = address;
		this.specialty = specialty;
		this.sage = sage;
		this.education = education;
		this.type = type;
		this.school = school;
		this.marry = marry;
		this.driver = driver;
		this.phone = phone;
		this.qq = qq;
		this.vchat = vchat;
	}

	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getSage() {
		return sage;
	}
	public void setSage(String sage) {
		this.sage = sage;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getGraduation() {
		return graduation;
	}
	public void setGraduation(String graduation) {
		this.graduation = graduation;
	}
	public String getCertificate() {
		return certificate;
	}
	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getMarry() {
		return marry;
	}
	public void setMarry(String marry) {
		this.marry = marry;
	}
	public String getDriver() {
		return driver;
	}
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getVchat() {
		return vchat;
	}
	public void setVchat(String vchat) {
		this.vchat = vchat;
	}

	@Override
	public String toString() {
		return "Students [sid=" + sid + ", sname=" + sname + ", gender=" + gender + ", birthday=" + birthday
				+ ", address=" + address + ", specialty=" + specialty + ",  sage=" + sage + ", education=" + education + ", type=" + type + ", graduation=" + graduation + ", certificate=" + certificate + ", height=" + height + ", school=" + school + ", marry=" + marry + ", driver=" + driver + ", phone=" + phone + ", qq=" + qq + ", vchat=" + vchat + "]";
	}
	
}
