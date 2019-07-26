/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.controllers;

import com.javagym.entities.Product;
import com.javagym.entities.User;
import com.javagym.services.ProductService;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import com.javagym.services.UserProfileService;
import com.javagym.services.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")
public class AdminController {

    @Autowired
    ProductService productService;
    
    @Autowired
    UserService userService;

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
    @RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
    public String admin(ModelMap model) {
        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "admin";
    }
    
    /**
     * This method will provide the medium to update an existing user.
     */
    @RequestMapping(value = {"/edit-product-{idproducts}"}, method = RequestMethod.GET)
    public String editProduct(@PathVariable int idproducts, ModelMap model) {
        Product product = productService.findById(idproducts);
        model.addAttribute("product", product);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "admin";
    }
    /**
     * This method will be called on form submission, handling POST request for
     * updating user in database. It also validates the user input
     */
    @RequestMapping(value = {"/edit-product-{idproducts}"}, method = RequestMethod.POST)
    public String updateProduct(@Valid Product product, BindingResult result,
            ModelMap model, @PathVariable int idproducts) {
        if (result.hasErrors()) {
            return "admin";
        }
        productService.updateProduct(product);

        model.addAttribute("success", "Product with ID " + product.getIdproducts() + " updated successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "admin";
    }
    
     /**
//     * This method will delete a product by it's ID value.
//     */
    @RequestMapping(value = {"/delete-product-{idproducts}"}, method = RequestMethod.GET)
    public String deleteProduct(@PathVariable int idproducts) {
        productService.deleteProductById(idproducts);
        return "redirect:/admin";
    }
    
    /**
     * This method will list all existing users.
     */
    @RequestMapping(value = {"/userlist"}, method = RequestMethod.GET)
    public String listUsers(ModelMap model) {

        List<User> users = userService.findAllUsers();
        model.addAttribute("users", users);
        model.addAttribute("loggedinuser", getPrincipal());
        return "userslist";
    }
    
     /**
     * This method will list all existing users.
     */
    @RequestMapping(value = {"/productlist"}, method = RequestMethod.GET)
    public String listProducts(ModelMap model) {

        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);
        model.addAttribute("loggedinuser", getPrincipal());
        return "userslist";
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
