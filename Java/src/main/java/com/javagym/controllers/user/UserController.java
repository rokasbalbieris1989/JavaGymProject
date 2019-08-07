/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.controllers.user;

import com.javagym.entities.Product;
import com.javagym.entities.Program;
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.javagym.entities.User;
import com.javagym.entities.UserProfile;
import com.javagym.services.product.ProductService;
import com.javagym.services.program.ProgramService;
import com.javagym.services.userProfile.UserProfileService;
import com.javagym.services.user.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class UserController {

    @Autowired
    UserService userService;
    
    @Autowired
    ProductService productService;

    @Autowired
    ProgramService programService;
    
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
     * This method will ...
     */
    @RequestMapping(value = {"/welcome2"}, method = RequestMethod.GET)
    public String admin( ModelMap model) {
        List<Program> programs = programService.findAllPrograms();
        model.addAttribute("programs", programs);
        model.addAttribute("loggedinuser", getPrincipal());
        return "welcome2";
    }
    
    @RequestMapping(value = {"/commerce"}, method = RequestMethod.GET)
    public String programs( ModelMap model) {
        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);
        List<Program> programs = programService.findAllPrograms();
        model.addAttribute("programs", programs);  
        model.addAttribute("loggedinuser", getPrincipal());
        return "commerce";
    }
    

    /**
     * This method will user's profile.
     */
    @RequestMapping(value = {"/myprofile-{ssoId}"}, method = RequestMethod.GET)
    public String myProfile(ModelMap model) {
        model.addAttribute("loggedinuser", getPrincipal());
        if (isCurrentAuthenticationAnonymous()) {
            return "accessDenied";
        }
        String ssoId = getPrincipal();
        User user = userService.findBySSO(ssoId);
        model.addAttribute("user", user);
        return "userProfile";
    }

    /**
     * This method will view user's profile.
     */
    @RequestMapping(value = {"/editUserProfile-{ssoId}"}, method = RequestMethod.GET)
    public String editUserProfile(ModelMap model) {
        model.addAttribute("loggedinuser", getPrincipal());
        if (isCurrentAuthenticationAnonymous()) {
            return "accessDenied";
        }
        String ssoId = getPrincipal();
        User user = userService.findBySSO(ssoId);
        model.addAttribute("user", user);
        return "editUserProfile";
    }

    /**
     * This method will view user's profile.
     */
    @RequestMapping(value = {"/editUserProfile-{ssoId}"}, method = RequestMethod.POST)
    public String updateUserProfile(@Valid User user, BindingResult result,
            ModelMap model, @PathVariable String ssoId) {

        if (result.hasErrors()) {
            return "editUserProfile";
        }

        if (!userService.isUserSSOUnique(user.getId(), user.getSsoId())) {
            FieldError ssoError = new FieldError("user", "ssoId", messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
            result.addError(ssoError);
            return "editUserProfile";
        }
        userService.updateUser(user);

//        model.addAttribute("success", "User " + user.getFirstName() + " " + user.getLastName() + " updated successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "userProfile";
    }

   
    @ModelAttribute("roles")
    public List<UserProfile> initializeProfiles() {
        return userProfileService.findAll();
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

    /**
     * This method returns true if users is already authenticated [logged-in],
     * else false.
     */
    private boolean isCurrentAuthenticationAnonymous() {
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authenticationTrustResolver.isAnonymous(authentication);
    }

}
