package mvc.model;

import java.sql.Date;

public class AccountDTO {
	// field
	private String id;
	private String pass;
	private String email;
	private String name;
	private String phone;
	private String profile;
	private Date birth;
	private String gender;
	private String intro;
	private int scope;
	
	// constructor
	public AccountDTO() {

	}
	public AccountDTO(String id, String pass, String email, String name) {
		this.id = id;
		this.pass = pass;
		this.email = email;
		this.name = name;
	}
	public AccountDTO(String id, String pass, String email, String name, String phone, String profile, Date birth, String gender, String intro, int scope) {
		this.id = id;
		this.pass = pass;
		this.email = email;
		this.name = name;
		this.phone = phone;
		this.profile = profile;
		this.birth = birth;
		this.gender = gender;
		this.intro = intro;
		this.scope = scope;
	}
	
	// getters and setters
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public int getScope() {
		return scope;
	}
	public void setScope(int scope) {
		this.scope = scope;
	}
	@Override
	public String toString() {
		return "\n AccountDTO [id=" + id + ", pass=" + pass + ", email=" + email + ", name=" + name + ", phone=" + phone
				+ ", profile=" + profile + ", birth=" + birth + ", gender=" + gender + ", intro=" + intro + ", scope=" + scope + "]\n\n";
	}
	
}
