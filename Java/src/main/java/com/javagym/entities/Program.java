/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.entities;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "program")
public class Program implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idprogram", nullable = false)
    private int idprogram;

    @NotEmpty
    @Column(name = "sports", nullable = false)
    private String sports;

    @NotNull
    @Column(name = "prices", nullable = false)
    private Integer prices;

    @NotEmpty
    @Column(name = "access", nullable = false)
    private String access;

    @NotNull
    @Column(name = "trainer_id", nullable = false)
    private int trainer_id;

    @NotEmpty
    @Column(name = "images", nullable = false)
    private String images;

    @NotEmpty
    @Column(name = "description", nullable = false)
    private String description;

    @NotEmpty
    @Column(name = "category", nullable = false)
    private String category;

    public Program() {
    }

    public Program(Integer idprogram, String sports, Integer prices, String access, Integer trainer_id, String images, String description, String category, String brand) {
        this.idprogram = idprogram;
        this.sports = sports;
        this.prices = prices;
        this.access = access;
        this.trainer_id = trainer_id;
        this.images = images;
        this.description = description;
        this.category = category;
    }

    public int getIdprogram() {
        return idprogram;
    }

    public void setIdprogram(int idprogram) {
        this.idprogram = idprogram;
    }

    public String getSports() {
        return sports;
    }

    public void setSports(String sports) {
        this.sports = sports;
    }

    public Integer getPrices() {
        return prices;
    }

    public void setPrices(Integer prices) {
        this.prices = prices;
    }

    public String getAccess() {
        return access;
    }

    public void setAccess(String access) {
        this.access = access;
    }

    public Integer getTrainer_id() {
        return trainer_id;
    }

    public void setTrainer_id(Integer trainer_id) {
        this.trainer_id = trainer_id;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 61 * hash + Objects.hashCode(this.idprogram);
        hash = 61 * hash + Objects.hashCode(this.sports);
        hash = 61 * hash + Objects.hashCode(this.prices);
        hash = 61 * hash + Objects.hashCode(this.access);
        hash = 61 * hash + Objects.hashCode(this.trainer_id);
        hash = 61 * hash + Objects.hashCode(this.images);
        hash = 61 * hash + Objects.hashCode(this.description);
        hash = 61 * hash + Objects.hashCode(this.category);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Program other = (Program) obj;
        if (!Objects.equals(this.sports, other.sports)) {
            return false;
        }
        if (!Objects.equals(this.access, other.access)) {
            return false;
        }
        if (!Objects.equals(this.images, other.images)) {
            return false;
        }
        if (!Objects.equals(this.description, other.description)) {
            return false;
        }
        if (!Objects.equals(this.category, other.category)) {
            return false;
        }

        if (!Objects.equals(this.idprogram, other.idprogram)) {
            return false;
        }
        if (!Objects.equals(this.prices, other.prices)) {
            return false;
        }
        if (!Objects.equals(this.trainer_id, other.trainer_id)) {
            return false;
        }
        return true;
    }
}
