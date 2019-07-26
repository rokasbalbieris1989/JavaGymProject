/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos;

import com.javagym.entities.Product;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author me
 */
@Repository("productDao")
public class ProductDaoImpl extends AbstractDao<Integer, Product> implements ProductDao {

    @Override
    public Product findById(int id) {
        Product product = getByKey(id);
		if(product!=null){
			Hibernate.initialize(product.getDescriptions());
		}
		return product;
    }

    @Override
    public void save(Product product) {
        persist(product);
    }

    @Override
    public void deleteById(int id) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("Id", id));
        Product product = (Product) crit.uniqueResult();
        delete(product);
    }
    @SuppressWarnings("unchecked")
    @Override
    public List<Product> findAllProducts() {
        Criteria criteria = createEntityCriteria();
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<Product> products = (List<Product>) criteria.list();
        return products;
    }

}
