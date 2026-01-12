package com.Employee.Repo;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.Employee.Model.Employee;

@Repository
public interface EmployeeRepo extends MongoRepository<Employee, Integer>{

}
