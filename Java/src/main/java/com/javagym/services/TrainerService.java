/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services;

import com.javagym.entities.Trainer;
import java.util.List;

/**
 *
 * @author me
 */
public interface TrainerService {

   Trainer findById(int id);

    void saveTrainer(Trainer trainer);

    void updateTrainer(Trainer trainer);

    void deleteTrainerById(int id);

    List<Trainer> findAllTrainers();
}
