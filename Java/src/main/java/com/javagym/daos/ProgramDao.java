/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.daos;

import com.javagym.entities.Program;
import java.util.List;

/**
 *
 * @author me
 */
public interface ProgramDao {

    Program findById(int id);

    void save(Program program);

    void deleteById(int id);

    List<Program> findAllPrograms();
}
