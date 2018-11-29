package pl.coderslab.schedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
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
        schedule.setPubOpen(pubOpenRepository.findById(id).orElse(null));
        List<EmployeeDisposition> employeeDispositions = employeeDispositionRepository.findAll();
        schedule.setEmployeeDisposition(employeeDispositions);
        model.addAttribute("schedule", schedule);
        return "schedule";
    }

    @PostMapping("/create/{id}")
    public String createPost(@ModelAttribute Schedule schedule, @PathVariable Long id){
        schedule.setPubOpen(pubOpenRepository.findById(id).orElse(null));
        schedule.setCreateDate(LocalDate.now());
        scheduleRepository.save(schedule);
        return "redirect:../../pub/info";
    }

    @GetMapping("/list")
    public String list(Model model){
        List<Schedule> schedules = scheduleRepository.findAll();
        model.addAttribute("schedules", schedules);
        return "scheduleList";
    }

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        Schedule schedule =scheduleRepository.findById(id).orElse(null);
        scheduleRepository.delete(schedule);
        return "redirect:../list";
    }

}
///*  @GetMapping("/disList")
//    public String list(Model model){
//        List<EmployeeDisposition> employeeDisposition =  employeeDispositionRepository.findAll();
//        model.addAttribute("employeeDisposition", employeeDisposition);
//        return "disList";
//    }*/