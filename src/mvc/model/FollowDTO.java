package mvc.model;

public class FollowDTO {
	private int no;
	private String user1;
	private String user2;
	private int following1;
	private int following2;
	
	// constructor
	public FollowDTO() {
		
	}

	public FollowDTO(int no, String user1, String user2, int following1, int following2) {
		this.no = no;
		this.user1 = user1;
		this.user2 = user2;
		this.following1 = following1;
		this.following2 = following2;
	}

	// getters and setters
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getUser1() {
		return user1;
	}

	public void setUser1(String user1) {
		this.user1 = user1;
	}

	public String getUser2() {
		return user2;
	}

	public void setUser2(String user2) {
		this.user2 = user2;
	}

	public int getFollowing1() {
		return following1;
	}

	public void setFollowing1(int following1) {
		this.following1 = following1;
	}

	public int getFollowing2() {
		return following2;
	}

	public void setFollowing2(int following2) {
		this.following2 = following2;
	}
	
	
}

	
	