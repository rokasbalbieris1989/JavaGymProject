/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos.program;

import com.javagym.daos.AbstractDao;
import com.javagym.entities.Program;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

/**
 *
 * @author me
 */
@Repository("programDao")
public class ProgramDaoImpl extends AbstractDao<Integer, Program> implements ProgramDao {

    @Override
    public Program findById(int id) {
        return getByKey(id);
    }

    @Override
    public void save(Program program) {
        persist(program);
    }

    @Override
    public void deleteById(int id) {
        delete(findById(id));
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Program> findAllPrograms() {
        Criteria criteria = createEntityCriteria();
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
        List<Program> programs = (List<Program>) criteria.list();
        return programs;
    }

}
