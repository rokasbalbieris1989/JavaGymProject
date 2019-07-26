/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos;

import com.javagym.entities.Product;
import java.util.List;

/**
 *
 * @author me
 */
public interface ProductDao {

    Product findById(int id);

    void save(Product product);

    void deleteById(int id);

    List<Product> findAllProducts();
}
