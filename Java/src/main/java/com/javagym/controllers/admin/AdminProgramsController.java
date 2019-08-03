/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.controllers.admin;

import com.javagym.entities.Program;
import com.javagym.services.program.ProgramService;
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
@RequestMapping("/admin/programs")
@SessionAttributes("roles")
public class AdminProgramsController {
    
    @Autowired
    ProgramService programService;
    
    @Autowired
    MessageSource messageSource;

    @Autowired
    PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;
    
    
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String adminPrograms(ModelMap model) {
        List<Program> programs = programService.findAllPrograms();
        model.addAttribute("programs", programs);  
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "adminPrograms";
    }
    
    @RequestMapping(value = "/addprogram", method = RequestMethod.GET)
    public String addProgram(ModelMap model) {
        Program program = new Program();
        model.addAttribute("program", program); 
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "addProgram";
    }
    
    @RequestMapping(value = "/addprogram", method = RequestMethod.PUT)
    public String addProgram(@Valid Program program,BindingResult result,ModelMap model) {
        
        if (result.hasErrors()) {
            return "addProgram";
        }
        programService.saveProgram(program);
        
        model.addAttribute("loggedinuser", getPrincipal());
        //return "success";
        return "redirect:/adminPrograms";
    }
    
    
    @RequestMapping(value = "/edit-program-{idprogram}", method = RequestMethod.GET)
    public String editProgram(@PathVariable int idprogram, ModelMap model) {
        Program program = programService.findById(idprogram);
        model.addAttribute("program", program);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "editProgram";
    }
    
    
    @RequestMapping(value = "/edit-program-{idprogram}", method = RequestMethod.POST)
    public String updateProgram(@Valid Program program, BindingResult result,
            ModelMap model) {
        if (result.hasErrors()) {
            return "editProduct";
        }
        programService.updateProgram(program);

//        model.addAttribute("success", "Product with ID " + product.getIdproduct() + " updated successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "adminPrograms";
    }
    
    
    @RequestMapping(value = {"/delete-program-{idprogram}"}, method = RequestMethod.GET)
    public String deleteProgram(@PathVariable int idprogram) {
        programService.deleteProgramById(idprogram);
        return "redirect:adminPrograms";
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
