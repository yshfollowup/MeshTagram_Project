package mvc.model;

public class FollowDTO {
	private int no;
	private String me;
	private String target;
	private int scope;
	
	// constructor
	public FollowDTO() {
		super();
	}
	
	public FollowDTO(int no, String me, String target, int scope) {
		super();
		this.no = no;
		this.me = me;
		this.target = target;
		this.scope = scope;
	}
	// getters and setters
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getMe() {
		return me;
	}
	public void setMe(String me) {
		this.me = me;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public int getScope() {
		return scope;
	}
	public void setScope(int scope) {
		this.scope = scope;
	}

}
