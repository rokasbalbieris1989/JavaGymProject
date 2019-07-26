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

    Trainer findBySSO(String sso);

    void saveUser(Trainer trainer);

    void updateUser(Trainer trainer);

    void deleteUserBySSO(String sso);

    List<Trainer> findAllUsers();
}
