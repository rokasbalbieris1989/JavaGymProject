/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos;

import com.javagym.entities.Sale;
import java.util.List;

/**
 *
 * @author me
 */
public interface SaleDao {
    Sale findById(int id);
	
	Sale findBySSO(String sso);
	
	void save(Sale sale);
	
	void deleteBySSO(String sso);
	
	List<Sale> findAllUsers();
}
