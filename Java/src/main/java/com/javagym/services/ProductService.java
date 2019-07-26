/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services;

import com.javagym.entities.Product;
import java.util.List;

/**
 *
 * @author me
 */
public interface ProductService {
    Product findById(int id);

    void saveProduct(Product product);

    void updateProduct(Product product);

    void deleteProductById(int id);

    List<Product> findAllProducts();
}
