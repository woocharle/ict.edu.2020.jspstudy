package com.ict.edu01;

public class VO {
	private String name, age, addr, gender, residence, cPage;

	private String[] hobby, animal;
	
	public VO() {
		// TODO Auto-generated constructor stub
	}

	public VO(String name, String age, String addr, String gender, String residence, String[] hobby, String[] animal, String cPage) {
		super();
		this.name = name;
		this.age = age;
		this.addr = addr;
		this.gender = gender;
		this.residence = residence;
		this.hobby = hobby;
		this.animal = animal;
		this.cPage = cPage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getResidence() {
		return residence;
	}

	public void setResidence(String residence) {
		this.residence = residence;
	}

	public String[] getHobby() {
		return hobby;
	}

	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}

	public String[] getAnimal() {
		return animal;
	}

	public void setAnimal(String[] animal) {
		this.animal = animal;
	}
	 
	public String getcPage() {
		return cPage;
	}

	public void setcPage(String cPage) {
		this.cPage = cPage;
	}
	
	
}
