package syngenta.der.utils;
public class AuthToken {

    private String token;

    public AuthToken(){

    }

	public AuthToken(String token){
        this.token = token;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
    
    public String toString() {
    	return token;
    }

}