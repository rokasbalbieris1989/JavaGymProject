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

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "sale")
public class Sale implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotEmpty
    @Column(name = "idsale", nullable = false)
    private Integer idsale;
        
    @NotEmpty
    @ManyToOne    
    @Column(name = "userId", nullable = false)
    private Integer userId; 
    
    @NotEmpty
    @ManyToOne
    @Column(name = "productId", nullable = false)
    private Integer productId;
      
    @NotEmpty
    @Column(name = "quantity", nullable = false)
    private Integer quantity;
     
    @NotEmpty
    @Column(name = "date", nullable = false)
    private Integer date;
      
    
    @NotEmpty
    @Column(name = "totalPrice", nullable = false)
    private Integer totalPrice;

        public Sale() {
        }

        public Sale(Integer idsale, Integer userId, Integer productId, Integer quantity, Integer date, Integer totalPrice) {
            this.idsale = idsale;
            this.userId = userId;
            this.productId = productId;
            this.quantity = quantity;
            this.date = date;
            this.totalPrice = totalPrice;
        }

        public Integer getIdsales() {
            return idsale;
        }

        public void setIdsales(Integer idsale) {
            this.idsale = idsale;
        }

        public Integer getUserId() {
            return userId;
        }

        public void setUserId(Integer userId) {
            this.userId = userId;
        }

        public Integer getProductId() {
            return productId;
        }

        public void setProductId(Integer productId) {
            this.productId = productId;
        }

        public Integer getQuantity() {
            return quantity;
        }

        public void setQuantity(Integer quantity) {
            this.quantity = quantity;
        }

        public Integer getDate() {
            return date;
        }

        public void setDate(Integer date) {
            this.date = date;
        }

        public Integer getTotalPrice() {
            return totalPrice;
        }

        public void setTotalPrice(Integer totalPrice) {
            this.totalPrice = totalPrice;
        }

        @Override
        public int hashCode() {
            int hash = 3;
            hash = 29 * hash + Objects.hashCode(this.idsale);
            hash = 29 * hash + Objects.hashCode(this.userId);
            hash = 29 * hash + Objects.hashCode(this.productId);
            hash = 29 * hash + Objects.hashCode(this.quantity);
            hash = 29 * hash + Objects.hashCode(this.date);
            hash = 29 * hash + Objects.hashCode(this.totalPrice);
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
            final Sale other = (Sale) obj;
            if (!Objects.equals(this.idsale, other.idsale)) {
                return false;
            }
            if (!Objects.equals(this.userId, other.userId)) {
                return false;
            }
            if (!Objects.equals(this.productId, other.productId)) {
                return false;
            }
            if (!Objects.equals(this.quantity, other.quantity)) {
                return false;
            }
            if (!Objects.equals(this.date, other.date)) {
                return false;
            }
            if (!Objects.equals(this.totalPrice, other.totalPrice)) {
                return false;
            }
            return true;
        }
       
}   
