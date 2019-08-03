/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.controllers.admin;

import com.javagym.entities.Trainer;
import com.javagym.services.trainer.TrainerService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 *
 * @author me
 */
@Controller
@RequestMapping("/admin/trainers")
@SessionAttributes("roles")
public class AdminTrainerController {
    
    @Autowired
    TrainerService trainerService;
    
    @Autowired
    MessageSource messageSource;

    @Autowired
    PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;
    
   
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String adminTrainers(ModelMap model) {
        List<Trainer> trainers = trainerService.findAllTrainers();
        model.addAttribute("trainers", trainers);
        model.addAttribute("loggedinuser", getPrincipal());
        return "adminTrainers";
    }
    
     @RequestMapping(value = "/addtrainer", method = RequestMethod.GET)
    public String addTrainer(ModelMap model) {
        Trainer trainer = new Trainer();
        model.addAttribute("trainer", trainer); 
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "addTrainer";
    }
    
    @RequestMapping(value = "/addtrainer", method = RequestMethod.PUT)
    public String addTrainer(@Valid Trainer trainer,BindingResult result,ModelMap model) {
        
        if (result.hasErrors()) {
            return "addTrainer";
        }
        trainerService.saveTrainer(trainer);
        
        model.addAttribute("loggedinuser", getPrincipal());
        //return "success";
        return "redirect:/adminTrainers";
    }
    
    
    @RequestMapping(value = "/edit-trainer-{idtrainer}", method = RequestMethod.GET)
    public String editTrainer(@PathVariable int idtrainer, ModelMap model) {
        Trainer trainer = trainerService.findById(idtrainer);
        model.addAttribute("trainer", trainer);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "editTrainer";
    }
    
    
    @RequestMapping(value = "/edit-trainer-{idtrainer}", method = RequestMethod.POST)
    public String updateTrainer(@Valid Trainer trainer, BindingResult result,
            ModelMap model) {
        if (result.hasErrors()) {
            return "editTrainer";
        }
        trainerService.updateTrainer(trainer);

//        model.addAttribute("success", "Product with ID " + product.getIdproduct() + " updated successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "adminTrainers";
    }
    
    
    @RequestMapping(value = {"/delete-trainer-{idtrainer}"}, method = RequestMethod.GET)
    public String deleteTrainer(@PathVariable int idprogram) {
        trainerService.deleteTrainerById(idprogram);
        return "redirect:adminTrainers";
    }
    /**
     * This method returns the principal[user-name] of logged-in user.
     */
    private String getPrincipal() {
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }

}
