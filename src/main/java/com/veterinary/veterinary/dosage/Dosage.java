package com.veterinary.veterinary.dosage;
import com.veterinary.veterinary.medicine.Medicine;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
public class Dosage {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @ManyToOne
    private Medicine medicine;

    private int quantity;
    private int frequency;

    public Dosage(int id, int quantity, int frequency) {
        this.id = id;
        this.quantity = quantity;
        this.frequency = frequency;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantité) {
        this.quantity = quantité;
    }

    public int getFrequency() {
        return frequency;
    }

    public void setFrequency(int fréquence) {
        this.frequency = fréquence;
    }
}
