/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos.sale;

import com.javagym.entities.Sale;
import java.util.List;

/**
 *
 * @author me
 */
public interface SaleDao {
    Sale findById(int id);

    void save(Sale sale);

    void deleteById(int id);

    List<Sale> findAllSales();
}
