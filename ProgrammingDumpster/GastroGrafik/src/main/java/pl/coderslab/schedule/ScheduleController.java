package pl.coderslab.schedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.employee.Employee;
import pl.coderslab.employee.EmployeeRepository;
import pl.coderslab.employeeDisposition.EmployeeDisposition;
import pl.coderslab.employeeDisposition.EmployeeDispositionRepository;
import pl.coderslab.pubOpened.PubOpenRepository;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/schedule")
public class ScheduleController {

    @Autowired
    ScheduleRepository scheduleRepository;

    @Autowired
    PubOpenRepository pubOpenRepository;

    @Autowired
    EmployeeDispositionRepository employeeDispositionRepository;

    @Autowired
    EmployeeRepository employeeRepository;

    @GetMapping("/create/{id}")
    public String create(Model model, @PathVariable Long id){
        Schedule schedule = new Schedule();
        schedule.setDate(LocalDate.now());
        schedule.setPubOpen(pubOpenRepository.findById(id).orElse(null));
        List<EmployeeDisposition> employeeDispositions = employeeDispositionRepository.findAll();
        schedule.setEmployeeDisposition(employeeDispositions);
        List<Employee> employees = employeeRepository.findAll();
        model.addAttribute("employees", employees);
        model.addAttribute("schedule", schedule);
        return "schedule";
    }

    @PostMapping("/create/{id}")
    public String createPost(@ModelAttribute Schedule schedule, @PathVariable Long id){
        scheduleRepository.save(schedule);
        return "redirect:../../pub/info";
    }
}
