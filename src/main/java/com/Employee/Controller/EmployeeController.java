package com.Employee.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.Employee.Model.Employee;
import com.Employee.Services.EmployeeService;
@Controller
public class EmployeeController {
	
	private EmployeeService empservise;
	
	
	EmployeeController( EmployeeService empservise)
	{
		this.empservise=empservise;
	}
	
	

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "AddEmployee";
    }
    
	@GetMapping("/dashboard")
    public String EmployeeList(Model model)
    {
    	List<Employee> emp= empservise.EmployeeList();
    	  model.addAttribute("employees",emp);
    	  return "Listemp";
    }
    
    
	@PostMapping("/save")
	public String addEmployee( @ModelAttribute Employee employee)
	{
	 empservise.addEmployee(employee);
	 return "redirect:/dashboard";
	}

    @GetMapping("/editform")
    public String EditForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "EditEmployee";
    }
	
	
}
	