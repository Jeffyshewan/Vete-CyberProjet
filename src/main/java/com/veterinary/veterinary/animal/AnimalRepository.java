package com.veterinary.veterinary.animal;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "animals")
public interface AnimalRepository extends JpaRepository<Animal, Integer> {
    public Iterable<Animal> findAnimalByNameIsContaining(String name);
}
