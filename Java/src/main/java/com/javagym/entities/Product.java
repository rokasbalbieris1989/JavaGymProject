/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javagym.entities;

/**
 *
 * @author me
 */
import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "products")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotEmpty
    @Column(name = "idproducts", nullable = false)
    private Integer idproducts;


    @NotEmpty
    @Column(name = "prices", nullable = false)
    private Integer prices;

    @NotEmpty
    @Column(name = "stoc", nullable = false)
    private Integer stoc;

    @NotEmpty
    @Column(name = "images", nullable = false)
    private String images;

    @NotEmpty
    @Column(name = "descriptions", nullable = false)
    private String descriptions;
    
    public Product() {
    }

    public Integer getIdproducts() {
        return idproducts;
    }

    public void setIdproducts(Integer idproducts) {
        this.idproducts = idproducts;
    }

    public Integer getPrices() {
        return prices;
    }

    public void setPrices(Integer prices) {
        this.prices = prices;
    }

    public Integer getStoc() {
        return stoc;
    }

    public void setStoc(Integer stoc) {
        this.stoc = stoc;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + Objects.hashCode(this.idproducts);
        hash = 59 * hash + Objects.hashCode(this.prices);
        hash = 59 * hash + Objects.hashCode(this.stoc);
        hash = 59 * hash + Objects.hashCode(this.images);
        hash = 59 * hash + Objects.hashCode(this.descriptions);
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
        final Product other = (Product) obj;
        if (!Objects.equals(this.idproducts, other.idproducts)) {
            return false;
        }
        if (!Objects.equals(this.prices, other.prices)) {
            return false;
        }
        if (!Objects.equals(this.stoc, other.stoc)) {
            return false;
        }
        if (!Objects.equals(this.images, other.images)) {
            return false;
        }
        if (!Objects.equals(this.descriptions, other.descriptions)) {
            return false;
        }
        return true;
    }

    public Product(Integer idproducts, Integer userproductIdId, Integer prices, Integer stoc, String images, String descriptions) {
        this.idproducts = idproducts;
        this.prices = prices;
        this.stoc = stoc;
        this.images = images;
        this.descriptions = descriptions;
    }

}
