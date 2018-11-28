package pl.coderslab.pubOpened;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.pub.PubRepository;

@Controller
@RequestMapping("/open")
public class PubOpenController {

    @Autowired
    PubOpenRepository pubOpenRepository;

    @Autowired
    PubRepository pubRepository;

    @GetMapping("/day/{id}")
    public String add(Model model, @PathVariable Long id){
        PubOpen pubOpen = new PubOpen();
        pubOpen.setPub(pubRepository.findById(id).orElse(null));
        model.addAttribute("pubOpen", pubOpen);
        return "open";
    }
    @PostMapping("/day/{id}")
    public String addPost(@ModelAttribute PubOpen pubOpen, @PathVariable Long id){
        pubOpenRepository.save(pubOpen);
        return "redirect:../../pub/info";
    }

}
