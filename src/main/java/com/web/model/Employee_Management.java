package com.web.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee_Management {
	@Id
	private Integer empId;
	private String empName;
	private String department;
	private String designation;
	private double salary;
	public Employee_Management() {
		super();
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "Employee_Management [empId=" + empId + ", empName=" + empName + ", department=" + department
				+ ", designation=" + designation + ", salary=" + salary + "]";
	}
	
	

}
