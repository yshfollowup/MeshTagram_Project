package mvc.model;

public class FollowDTO {
	private String owner;
	private String target;
	
	// constructor
	public FollowDTO() {
		
	}

	public FollowDTO(String owner, String target) {
		super();
		this.owner = owner;
		this.target = target;
	}

	// getters and setters
	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}
	
	
}

	
	