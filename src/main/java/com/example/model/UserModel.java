package com.example.model;

public class UserModel {

	private Integer id;
	public UserModel(String code, String name, String pass) {
		super();
		this.code = code;
		this.name = name;
		this.pass = pass;
	}

	public UserModel() {
		super();
	}

	@Override
	public String toString() {
		return  id + code + name + pass;
	}

	private String code;
	private String name;
	private String pass;

	public static void main(String[] args) {
		UserModel userModel = new UserModel();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

//	public static void main(String[] args) {
//		UserModel usermodel = new UserModel();
//		usermodel.setCode("a001");
//		usermodel.setName("张三");
//	}

//	public Integer getId() {
//		return id;
//	}
//
//	public void setId(Integer id) {
//		this.id = id;
//	}
//
//	public String getCode() {
//		return code;
//	}
//
//	public void setCode(String code) {
//		this.code = code;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public String getPass() {
//		return pass;
//	}
//
//	public void setPass(String pass) {
//		this.pass = pass;
//	}

}
