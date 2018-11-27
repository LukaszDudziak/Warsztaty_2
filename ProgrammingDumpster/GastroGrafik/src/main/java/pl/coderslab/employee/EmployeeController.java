package pl.coderslab.employee;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

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
        return "redirect:list";
    }

    @GetMapping("/edit/{id}")
    public String editEmployee(Model model, @PathVariable Long id) {
        Employee employee = employeeRepository.findById(id).orElse(null);
        model.addAttribute(employee);
        return "employee";
    }

    @PostMapping("/edit/{id}")
    public String editEmployeePost(@PathVariable Long id, @ModelAttribute @Valid Employee employee, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "employee";
        }
        employeeRepository.save(employee);
        return "redirect:../list";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        employeeRepository.deleteById(id);
        return "redirect:../list";
    }

}
