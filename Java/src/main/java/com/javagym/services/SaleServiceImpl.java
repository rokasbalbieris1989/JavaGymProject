/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services;

import com.javagym.daos.SaleDao;
import com.javagym.entities.Sale;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author me
 */
@Service("saleService")
@Transactional
public class SaleServiceImpl implements SaleService {

    @Autowired
    private SaleDao dao;

    @Override
    public Sale findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveSale(Sale sale) {
        dao.save(sale);
    }

    @Override
    public void updateSale(Sale sale) {
        Sale entity = dao.findById(sale.getIdsales());
		if(entity!=null){
			entity.setDate(sale.getDate());
			entity.setProductId(sale.getProductId());
                        entity.setUserId(sale.getUserId());
			entity.setQuantity(sale.getQuantity());
			entity.setTotalPrice(sale.getTotalPrice());
		}       
    }

    @Override
    public void deleteSaleById(int id) {
        dao.deleteById(id);
    }

    @Override
    public List<Sale> findAllSales() {
        return dao.findAllSales();

    }

}
