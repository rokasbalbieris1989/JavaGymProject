/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos.trainer;

import com.javagym.daos.AbstractDao;
import com.javagym.daos.trainer.TrainerDao;
import com.javagym.entities.Trainer;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author me
 */
@Repository("trainerDao")
public class TrainerDaoImpl extends AbstractDao<Integer, Trainer> implements TrainerDao {

    @Override
    public Trainer findById(int id) {
       return getByKey(id);
    }

    @Override
    public void save(Trainer trainer) {
        persist(trainer);
    }

    @SuppressWarnings("unchecked")
    @Override
    public void deleteById(int id) {
        delete(findById(id));
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Trainer> findAllTrainers() {
        Criteria criteria = createEntityCriteria();
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<Trainer> trainers = (List<Trainer>) criteria.list();
        return trainers;
    }

}
