/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services;

import com.javagym.entities.Sale;
import java.util.List;

/**
 *
 * @author me
 */
public interface SaleService {
    Sale findById(int id);

    void saveSale(Sale sale);

    void updateSale(Sale sale);

    void deleteSaleById(int id);

    List<Sale> findAllSales();
}
