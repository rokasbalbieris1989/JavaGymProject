/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.controllers.admin;

import com.javagym.entities.Product;
import com.javagym.services.product.ProductService;
import com.javagym.services.program.ProgramService;
import com.javagym.services.trainer.TrainerService;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.javagym.services.userProfile.UserProfileService;
import com.javagym.services.user.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AdminMainController {

    @Autowired
    ProductService productService;
    
    @Autowired
    ProgramService programService;
    
    @Autowired
    UserService userService;
    
    @Autowired
    TrainerService trainerService;

    @Autowired
    UserProfileService userProfileService;

    @Autowired
    MessageSource messageSource;

    @Autowired
    PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;

    /**
     *
     * @author me
     */
    /**
     * This method will give the main admin page
     */
    @RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
    public String admin(ModelMap model) {
        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);  
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "adminProducts";
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
