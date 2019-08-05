/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services.program;

import com.javagym.services.program.ProgramService;
import com.javagym.daos.program.ProgramDao;
import com.javagym.entities.Program;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author me
 */
@Service("programService")
@Transactional
public class ProgramServiceImpl implements ProgramService{
    
    @Autowired
    private ProgramDao dao;


    @Override
    public Program findById(int id) {
        return dao.findById(id);
    }

    @Override
    public void saveProgram(Program program) {
        dao.save(program);
    }

    @Override
    public void updateProgram(Program program) {
        Program entity = dao.findById(program.getIdprogram());
		if(entity!=null){
			entity.setImages(program.getImages());
			entity.setPrices(program.getPrices());
			entity.setCategory(program.getCategory());
			entity.setSports(program.getSports());
			entity.setDescription(program.getDescription());
		}       
    }

    @Override
    public void deleteProgramById(int id) {
        dao.deleteById(id);
    }

    @Override
    public List<Program> findAllPrograms() {
        return dao.findAllPrograms();
    }
    
}
