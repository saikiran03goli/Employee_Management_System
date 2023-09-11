package com.web.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.Employee_Management;
import com.web.repository.EmployeeRepo;

@Controller
public class Employee {
	@Autowired
	private EmployeeRepo repo;
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	@RequestMapping("/req1")
	public String addEmployee() {
		return "add_employee";
	}
	@RequestMapping(value="/add",method= RequestMethod.POST)
	public String employeeAdd(@RequestParam Integer empId,
								@RequestParam String empName,
								@RequestParam String department,
								@RequestParam String designation,
								@RequestParam double salary , Employee_Management emp) {
		    repo.save(emp);
		    return "success";
	}
	@RequestMapping(value = "/get", method = RequestMethod.GET)
	public String employeeGet(Model m) {
	    List<Employee_Management> employees = (List<Employee_Management>) repo.findAll();
	    m.addAttribute("employees", employees);
	    return "getemployees";
	}
	@RequestMapping(value="/update/{empId}")
	   public String update(@PathVariable Integer empId,Model m)
	   {
	 	  Employee_Management emp=repo.findById(empId).get();
	 	  m.addAttribute("command",emp);
	 	  return"update";
	   }
	@RequestMapping(value="/updateEmp",method=RequestMethod.POST)
	   public String updateEmp(@RequestParam Integer empId,
	           @RequestParam String empName,
	           @RequestParam String department,
	           @RequestParam String designation,
	           @RequestParam double salary,
	           Employee_Management emp)
	   {
		   repo.save(emp);
		   return"success";
	   }
	@RequestMapping(value="/delete/{empId}")
	   public String delete(@PathVariable Integer empId,Model m)
	   {
	 	  repo.deleteById(empId);
	 	  return"success";
	   }
	@RequestMapping(value="/req4")
	   public String about()
	   {
	 	  return"about";
	   }
	

		    		    

}

