/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services;

import com.javagym.daos.TrainerDao;
import com.javagym.entities.Trainer;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author me
 */
@Service("trainerService")
@Transactional
public class TrainerServiceImpl implements TrainerService {

    @Autowired
    private TrainerDao dao;

    @Override
    public Trainer findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveTrainer(Trainer trainer) {
        dao.save(trainer);
    }

    @Override
    public void updateTrainer(Trainer trainer) {
        Trainer entity = dao.findById(trainer.getIdtrainer());
		if(entity!=null){
			entity.setFirstName(trainer.getFirstName());
			entity.setLastName(trainer.getLastName());
			entity.setEmail(trainer.getEmail());
			entity.setSubject(trainer.getSubject());
		}       
    }

    @Override
    public void deleteTrainerById(int id) {
        dao.deleteById(id);
    }

    @Override
    public List<Trainer> findAllTrainers() {
        return dao.findAllTrainers();
    }

}
