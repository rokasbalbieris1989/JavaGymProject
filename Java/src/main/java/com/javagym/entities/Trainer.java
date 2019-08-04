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
    @Column(name = "idtrainer", nullable = false)
    private int idtrainer;
    
    @NotEmpty
    @Column(name = "firstName", nullable = false)
    private String firstName;


    @NotEmpty
    @Column(name = "lastName", nullable = false)
    private String lastName;    
    
    @NotEmpty
    @Column(name = "email", nullable = false)
    private String email;

    @NotEmpty
    @Column(name = "subject", nullable = false)
    private String subject;  

        public Trainer() {
        }

        public int getIdtrainer() {
            return idtrainer;
        }

        public void setIdtrainer(int idtrainer) {
            this.idtrainer = idtrainer;
        }

        public String getFirstName() {
            return firstName;
        }

        public void setFirstName(String firstName) {
            this.firstName = firstName;
        }

        public String getLastName() {
            return lastName;
        }

        public void setLastName(String lastName) {
            this.lastName = lastName;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getSubject() {
            return subject;
        }

        public void setSubject(String subject) {
            this.subject = subject;
        }

        @Override
        public int hashCode() {
            int hash = 3;
            hash = 59 * hash + Objects.hashCode(this.idtrainer);
            hash = 59 * hash + Objects.hashCode(this.firstName);
            hash = 59 * hash + Objects.hashCode(this.lastName);
            hash = 59 * hash + Objects.hashCode(this.email);
            hash = 59 * hash + Objects.hashCode(this.subject);
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
            if (!Objects.equals(this.firstName, other.firstName)) {
                return false;
            }
            if (!Objects.equals(this.lastName, other.lastName)) {
                return false;
            }
            if (!Objects.equals(this.email, other.email)) {
                return false;
            }
            if (!Objects.equals(this.subject, other.subject)) {
                return false;
            }
            if (!Objects.equals(this.idtrainer, other.idtrainer)) {
                return false;
            }
            return true;
        }

        public Trainer(Integer idtrainer, String firstName, String lastName, String email, String subject) {
            this.idtrainer = idtrainer;
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.subject = subject;
        }

      
    
}
