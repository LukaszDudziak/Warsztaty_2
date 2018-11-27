package pl.coderslab.pub;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.employee.Employee;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/pub")
public class PubController {

    @Autowired
    PubRepository pubRepository;

    @GetMapping("/info")
    public String info(Model model){
        List<Pub> pubs =  pubRepository.findAll();
        model.addAttribute("pubs", pubs);
        return "info";
    }

    @GetMapping("/edit/{id}")
    public String editPub(Model model, @PathVariable Long id) {
        Pub pub =pubRepository.findById(id).orElse(null);
        model.addAttribute(pub);
        return "pub";
    }

    @PostMapping("/edit/{id}")
    public String editPubPost(@PathVariable Long id, @ModelAttribute @Valid Pub pub, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "pub";
        }
        pubRepository.save(pub);
        return "redirect:../info";
    }
}
