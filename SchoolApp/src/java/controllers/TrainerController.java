package controllers;

import dao.TrainerDao;
import java.util.List;
import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TrainerController {

    @Autowired 
    TrainerDao trainerDao;
    
    @RequestMapping(value = "form.htm", method = RequestMethod.GET)
    public String showForm(ModelMap m) {
        Trainer tr = new Trainer();
        m.addAttribute("trainer", tr);
        return "form";
    }
    
    @RequestMapping(value ="showform.htm", method=RequestMethod.POST)
    public String accesForm(ModelMap m, @ModelAttribute("trainer") Trainer tr){
     trainerDao.insert(tr);
        
        return "index";
    }
    
    @RequestMapping(value = "showtable.htm" ,method=RequestMethod.GET)
    public String showTrainerList(ModelMap m ){
        List<Trainer> trainers = trainerDao.getTrainerList();
        m.addAttribute("trainers", trainers);
        return "trainerList";
    }
    
    
    
    
    
    
}
