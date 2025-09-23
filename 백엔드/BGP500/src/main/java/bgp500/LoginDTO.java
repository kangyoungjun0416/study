package bgp500;

public class LoginDTO {

		private String userID;
		private String userPW;
		private String loginState;
		
		public LoginDTO() {
			super();
			// TODO Auto-generated constructor stub
			
		}

		public LoginDTO(String userID, String userPW, String loginState) {
			super();
			this.userID = userID;
			this.userPW = userPW;
			this.loginState = loginState;
			
		}

		public String getUserID() {
			return userID;
		}

		public void setUserID(String userID) {
			this.userID = userID;
		}

		public String getUserPW() {
			return userPW;
		}

		public void setUserPW(String userPW) {
			this.userPW = userPW;
		}

		public String getLoginState() {
			return loginState;
		}

		public void setLoginState(String loginState) {
			this.loginState = loginState;
		}

}
