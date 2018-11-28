package pl.coderslab.employeeDisposition;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.employee.EmployeeRepository;

import java.util.List;

@Controller
@RequestMapping("/disposition")
public class EmployeeDispositionController {

    @Autowired
    EmployeeDispositionRepository employeeDispositionRepository;

    @Autowired
    EmployeeRepository employeeRepository;


    @GetMapping("/disList")
    public String list(Model model){
        List<EmployeeDisposition> employeeDisposition =  employeeDispositionRepository.findAll();
        model.addAttribute("employeeDisposition", employeeDisposition);
        return "disList";
    }
    @GetMapping("/add/{id}")
    public String add(Model model, @PathVariable Long id){
        EmployeeDisposition employeeDisposition = new EmployeeDisposition();
        employeeDisposition.setEmployee(employeeRepository.findById(id).orElse(null));
        employeeDisposition.setId(id);
        model.addAttribute("employeeDisposition", employeeDisposition);
        return "disposition";
    }
    @PostMapping("/add/{id}")
    @ResponseBody
    public String add(@ModelAttribute EmployeeDisposition employeeDisposition, @PathVariable Long id){
        employeeDispositionRepository.save(employeeDisposition);
        return "zapisano";
    }

    @GetMapping("/edit/{id}")
    public String editEmployeeDisposition(Model model, @PathVariable Long id ) {
        EmployeeDisposition employeeDisposition = employeeDispositionRepository.findById(id).orElse(null);
        model.addAttribute(employeeDisposition);
        return "disposition";
    }

    @PostMapping("/edit/{id}")
    public String editEmployeeDispositionPost(@PathVariable Long id, @ModelAttribute EmployeeDisposition employeeDisposition) {
        employeeDispositionRepository.save(employeeDisposition);
        return "redirect:../disList";
    }
/*
    @GetMapping("/delete/{id}")
    public String deleteEmployeeDisposition(@PathVariable Long id) {
        employeeDispositionRepository.deleteById(id);
        return "disList";
    }
    */
}
