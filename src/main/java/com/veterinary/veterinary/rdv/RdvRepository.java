package com.veterinary.veterinary.rdv;

import com.veterinary.veterinary.animal.Animal;
import com.veterinary.veterinary.doctor.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.Optional;

@RepositoryRestResource(path = "rdvs")
public interface RdvRepository extends JpaRepository<Rdv, Integer> {
    Iterable<Rdv> findRdvByAnimal(Optional<Animal> animal);

    Iterable<Rdv> findRdvByDoctor(Optional<Doctor> opt);
}
