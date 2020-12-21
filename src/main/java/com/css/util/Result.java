package com.css.util;



import lombok.Data;

import java.io.Serializable;

/**
 *   接口返回数据格式
 */
@Data
public class Result<T> implements Serializable {

	private static final long serialVersionUID = 1L;



	/**
	 * 返回处理消息
	 */
	private String msg = "操作成功！";

	/**
	 * 返回代码
	 */
	private Integer code = 0;

	/**
	 * 返回数据对象 data
	 */
	private T data;
	
	/**
	 * 时间戳
	 */
	private long timestamp = System.currentTimeMillis();

	public Result() {
		
	}

	public Result<T> error500(String message) {
		this.msg = message;
		this.code = Constant.SC_INTERNAL_SERVER_ERROR_500;
		return this;
	}
	
	public static <T> Result success() {
		Result<T> r = new Result<T>();
		r.setCode(Constant.SC_OK_200);
		return r;
	}

	public static <T> Result success(String msg) {
		Result<T> r = new Result<T>();
		r.setCode(Constant.SC_OK_200);
		r.setMsg(msg);
		return r;
	}
	
	public static Result<Object> success(Object data) {
		Result<Object> r = new Result<Object>();
		r.setCode(Constant.SC_OK_200);
		r.setData(data);
		return r;
	}
	
	public static <T> Result error(String msg) {
		return error(Constant.SC_INTERNAL_SERVER_ERROR_500, msg);
	}
	
	public static <T> Result error(int code, String msg) {
		Result<T> r = new Result<T>();
		r.setCode(code);
		r.setMsg(msg);
		return r;
	}

}