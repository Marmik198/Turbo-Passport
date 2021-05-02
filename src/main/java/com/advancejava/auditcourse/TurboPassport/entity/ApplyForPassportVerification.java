package com.advancejava.auditcourse.TurboPassport.entity;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="applications")
public class ApplyForPassportVerification {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	@Column(name = "fullname")
	private String fullname;
	
	@Column(name="nationality")
	private String nationality;
	
	@Column(name="dob")
	private String dob;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="fathersname")
	private String farhersname;
	
	@Column(name="mothersname")
	private String mothersname;
	
	@Column(name="placeofbirth")
	private String placeofbirth;
	
	@Column(name="countrycode")
	private String countrycode;
	
	@Column(name = "Status")
	private int status;

}
