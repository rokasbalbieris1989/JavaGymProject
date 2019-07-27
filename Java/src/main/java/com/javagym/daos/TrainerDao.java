/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos;

import com.javagym.entities.Trainer;
import java.util.List;

/**
 *
 * @author me
 */
public interface TrainerDao {

    Trainer findById(int id);

    void save(Trainer trainer);

    void deleteById(int id);

    List<Trainer> findAllTrainers();
}
