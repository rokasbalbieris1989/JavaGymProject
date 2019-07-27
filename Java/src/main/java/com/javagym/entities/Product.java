package com.javagym.entities;

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
@Table(name = "product")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotEmpty
    @Column(name = "idproduct", nullable = false)
    private Integer idproduct;

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

    @NotEmpty
    @Column(name = "category", nullable = false)
    private String category;

    @NotEmpty
    @Column(name = "brand", nullable = false)
    private String brand;

    public Product() {
    }

    public Integer getIdproducts() {
        return idproduct;
    }

    public void setIdproducts(Integer idproduct) {
        this.idproduct = idproduct;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 71 * hash + Objects.hashCode(this.idproduct);
        hash = 71 * hash + Objects.hashCode(this.prices);
        hash = 71 * hash + Objects.hashCode(this.stoc);
        hash = 71 * hash + Objects.hashCode(this.images);
        hash = 71 * hash + Objects.hashCode(this.descriptions);
        hash = 71 * hash + Objects.hashCode(this.category);
        hash = 71 * hash + Objects.hashCode(this.brand);
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
        if (!Objects.equals(this.images, other.images)) {
            return false;
        }
        if (!Objects.equals(this.descriptions, other.descriptions)) {
            return false;
        }
        if (!Objects.equals(this.category, other.category)) {
            return false;
        }
        if (!Objects.equals(this.brand, other.brand)) {
            return false;
        }
        if (!Objects.equals(this.idproduct, other.idproduct)) {
            return false;
        }
        if (!Objects.equals(this.prices, other.prices)) {
            return false;
        }
        if (!Objects.equals(this.stoc, other.stoc)) {
            return false;
        }
        return true;
    }

    public Product(Integer idproduct, Integer prices, Integer stoc, String images, String descriptions, String category, String brand) {
        this.idproduct = idproduct;
        this.prices = prices;
        this.stoc = stoc;
        this.images = images;
        this.descriptions = descriptions;
        this.category = category;
        this.brand = brand;
    }

}
