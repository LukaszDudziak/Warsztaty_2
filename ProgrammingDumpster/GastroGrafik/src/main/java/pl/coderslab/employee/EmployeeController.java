package pl.coderslab.employee;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    @Autowired
    EmployeeRepository employeeRepository;

    @GetMapping("/list")
    public String list(Model model){
        List<Employee> employees =  employeeRepository.findAll();
        model.addAttribute("employees", employees);
        return "list";
    }
    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("employee", new Employee());
        return "employee";
    }
    @PostMapping("/add")
    public String add(@ModelAttribute @Valid Employee employee, BindingResult result){
        if (result.hasErrors()) {
            return "employee";
        }
        employeeRepository.save(employee);
        return "employee";
    }

}
