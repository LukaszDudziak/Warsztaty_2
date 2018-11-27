package pl.coderslab.EmployeeDisposition;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.employee.Employee;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/disposition")
public class EmployeeDispositionController {

    @Autowired
    EmployeeDispositionRepository employeeDispositionRepository;


    @GetMapping("/disList")
    public String list(Model model){
        List<EmployeeDisposition> employeeDisposition =  employeeDispositionRepository.findAll();
        model.addAttribute("employeeDisposition", employeeDisposition);
        return "disList";
    }
    @GetMapping("/add")
    public String add(Model model){
        model.addAttribute("employeeDisposition", new EmployeeDisposition());
        return "disposition";
    }
    @PostMapping("/add")
    public String add(@ModelAttribute EmployeeDisposition employeeDisposition){
        employeeDispositionRepository.save(employeeDisposition);
        return "redirect:disList";
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
