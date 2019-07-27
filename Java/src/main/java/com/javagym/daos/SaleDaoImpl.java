/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos;

import com.javagym.entities.Sale;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author me
 */
@Repository("saleDao")
public class SaleDaoImpl extends AbstractDao<Integer, Sale> implements SaleDao{

    @Override
    public Sale findById(int id) {
        Sale sale = getByKey(id);
        if (sale != null) {
            Hibernate.initialize(sale.getIdsales());
        }
        return sale;
    }

    @Override
    public void save(Sale sale) {
        persist(sale);
    }

    @Override
    public void deleteById(int id) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("Id", id));
        Sale sale = (Sale) crit.uniqueResult();
        delete(sale);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Sale> findAllSales() {
        Criteria criteria = createEntityCriteria();
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<Sale> sale = (List<Sale>) criteria.list();
        return sale;
    }
    
}
