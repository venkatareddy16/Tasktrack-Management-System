package com.model;

public class UserModel {
	private int userid;
	private String userfullname;
	private String useremail;
	private String userpassword;
	private String userrole;

	public UserModel() {
		
	}

	public UserModel(String userfullname, String useremail, String userpassword, String userrole) {
		this.userfullname = userfullname;
		this.useremail = useremail;
		this.userpassword = userpassword;
		this.userrole = userrole;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getUserfullname() {
		return userfullname;
	}

	public void setUserfullname(String userfullname) {
		this.userfullname = userfullname;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getUserrole() {
		return userrole;
	}

	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}

	@Override
	public String toString() {
		return "UserModel [userid=" + userid + ", userfullname=" + userfullname + ", useremail=" + useremail
				+ ", userpassword=" + userpassword + ", userrole=" + userrole + "]";
	}
    
}
