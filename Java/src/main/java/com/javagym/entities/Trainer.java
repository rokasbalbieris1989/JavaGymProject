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
@Table(name = "trainer")
public class Trainer implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @NotEmpty
    @Column(name = "idtrainer", nullable = false)
    private Integer idtrainer;
    
    @NotEmpty
    @Column(name = "FirstName", nullable = false)
    private String FirstName;


    @NotEmpty
    @Column(name = "LastName", nullable = false)
    private String LastName;    
    
    @NotEmpty
    @Column(name = "Email", nullable = false)
    private String Email;

    @NotEmpty
    @Column(name = "Subject", nullable = false)
    private String Subject;  

        public Trainer() {
        }

        public Integer getIdtrainer() {
            return idtrainer;
        }

        public void setIdtrainer(Integer idtrainer) {
            this.idtrainer = idtrainer;
        }

        public String getFirstName() {
            return FirstName;
        }

        public void setFirstName(String FirstName) {
            this.FirstName = FirstName;
        }

        public String getLastName() {
            return LastName;
        }

        public void setLastName(String LastName) {
            this.LastName = LastName;
        }

        public String getEmail() {
            return Email;
        }

        public void setEmail(String Email) {
            this.Email = Email;
        }

        public String getSubject() {
            return Subject;
        }

        public void setSubject(String Subject) {
            this.Subject = Subject;
        }

        @Override
        public int hashCode() {
            int hash = 3;
            hash = 59 * hash + Objects.hashCode(this.idtrainer);
            hash = 59 * hash + Objects.hashCode(this.FirstName);
            hash = 59 * hash + Objects.hashCode(this.LastName);
            hash = 59 * hash + Objects.hashCode(this.Email);
            hash = 59 * hash + Objects.hashCode(this.Subject);
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
            final Trainer other = (Trainer) obj;
            if (!Objects.equals(this.FirstName, other.FirstName)) {
                return false;
            }
            if (!Objects.equals(this.LastName, other.LastName)) {
                return false;
            }
            if (!Objects.equals(this.Email, other.Email)) {
                return false;
            }
            if (!Objects.equals(this.Subject, other.Subject)) {
                return false;
            }
            if (!Objects.equals(this.idtrainer, other.idtrainer)) {
                return false;
            }
            return true;
        }

        public Trainer(Integer idtrainer, String FirstName, String LastName, String Email, String Subject) {
            this.idtrainer = idtrainer;
            this.FirstName = FirstName;
            this.LastName = LastName;
            this.Email = Email;
            this.Subject = Subject;
        }

      
    
}
