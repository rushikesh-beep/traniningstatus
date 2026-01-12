package com.Employee.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Employee.Model.Employee;
import com.Employee.Repo.EmployeeRepo;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeRepo emprepo;
	public Employee addEmployee(Employee employee) {
	
		return emprepo.save(employee);
	}
	public List<Employee> EmployeeList() {
	
		 return emprepo.findAll();
	}

	
	
	
}
