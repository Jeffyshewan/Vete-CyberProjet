package com.veterinary.veterinary.animal;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.sql.Date;

@Entity
@Data
@NoArgsConstructor
public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String race;
    private java.sql.Date birth;
    private java.sql.Date death;
    @ManyToOne
    private Animal parent_1;
    @ManyToOne
    private Animal parent_2;

    public Animal(int id) {
        this.id = id;
    }

    public Animal(int id, String name, String race, java.sql.Date birth, java.sql.Date death, Animal parent_1, Animal parent_2) {
        this.id = id;
        this.name = name;
        this.race = race;
        this.birth = birth;
        this.death = death;
        this.parent_1 = parent_1;
        this.parent_2 = parent_2;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRace() {
        return race;
    }

    public void setRace(String race) {
        this.race = race;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public Date getDeath() {
        return death;
    }

    public void setDeath(Date death) {
        this.death = death;
    }

    public Animal getParent_1() {
        return parent_1;
    }

    public void setParent_1(Animal parent_1) {
        this.parent_1 = parent_1;
    }

    public Animal getParent_2() {
        return parent_2;
    }

    public void setParent_2(Animal parent_2) {
        this.parent_2 = parent_2;
    }

    public boolean isParent1Null(){
        return parent_1 == null;
    }
    public boolean isParent2Null(){
        return parent_2 == null;
    }
}
