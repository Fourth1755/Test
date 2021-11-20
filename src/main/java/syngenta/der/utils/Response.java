package syngenta.der.utils;



import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;


public class Response<T> {

	private int status;

	private T data;

	private String message;

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Response() {
		super();
	}

	public Response(int status, String message, T data) {
		super();
		this.status = status;
		this.message = message;
		this.data = data;
	}

}
