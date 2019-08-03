/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.controllers.admin;

import com.javagym.entities.Product;
import com.javagym.services.product.ProductService;
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
@RequestMapping("/admin/products")
@SessionAttributes("roles")
public class AdminProductsController {
    
    @Autowired
    ProductService productService;
    
    @Autowired
    MessageSource messageSource;

    @Autowired
    PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;
    
    
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public String adminProducts(ModelMap model) {
        List<Product> products = productService.findAllProducts();
        model.addAttribute("products", products);  
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "adminProducts";
    }
    
    @RequestMapping(value = "/addproduct", method = RequestMethod.GET)
    public String addProduct(ModelMap model) {
        Product product = new Product();
        model.addAttribute("product", product); 
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "addProduct";
    }
    
    @RequestMapping(value = "/addproduct", method = RequestMethod.PUT)
    public String addProduct(@Valid Product product,BindingResult result,ModelMap model) {
        
        if (result.hasErrors()) {
            return "addProduct";
        }
        productService.saveProduct(product);
        
        model.addAttribute("loggedinuser", getPrincipal());
        //return "success";
        return "redirect:/adminProducts";
    }
    
    
    @RequestMapping(value = "/edit-product-{idproduct}", method = RequestMethod.GET)
    public String editProduct(@PathVariable int idproduct, ModelMap model) {
        Product product = productService.findById(idproduct);
        model.addAttribute("product", product);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "editProduct";
    }
    
    
    @RequestMapping(value = "/edit-product-{idproduct}", method = RequestMethod.POST)
    public String updateProduct(@Valid Product product, BindingResult result,
            ModelMap model) {
        if (result.hasErrors()) {
            return "editProduct";
        }
        productService.updateProduct(product);

//        model.addAttribute("success", "Product with ID " + product.getIdproduct() + " updated successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "adminProducts";
    }
    
    
    @RequestMapping(value = {"/delete-product-{idproduct}"}, method = RequestMethod.GET)
    public String deleteProduct(@PathVariable int idproduct) {
        productService.deleteProductById(idproduct);
        return "redirect:adminProducts";
    }
    
    
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
