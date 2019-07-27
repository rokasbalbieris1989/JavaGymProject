/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.services;

import com.javagym.entities.Program;
import java.util.List;

/**
 *
 * @author me
 */
public interface ProgramService {
    Program findById(int id);

    void saveProgram(Program program);

    void updateProgram(Program program);

    void deleteProgramById(int id);

    List<Program> findAllPrograms();
}
