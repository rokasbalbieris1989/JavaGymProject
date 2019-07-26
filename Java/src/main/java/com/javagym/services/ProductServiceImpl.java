/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services;

import com.javagym.daos.ProductDao;
import com.javagym.entities.Product;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author me
 */
@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao dao;

    @Override
    public Product findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveProduct(Product product) {
        dao.save(product);
    }

    @Override
    public void updateProduct(Product product) {
        Product entity = dao.findById(product.getIdproducts());
		if(entity!=null){
			entity.setDescriptions(product.getDescriptions());
			entity.setImages(product.getImages());
			entity.setPrices(product.getPrices());
			entity.setStoc(product.getStoc());
		}
    }

    @Override
    public void deleteProductById(int id) {
        dao.deleteById(id);
    }

    @Override
    public List<Product> findAllProducts() {
        return dao.findAllProducts();
    }

}
