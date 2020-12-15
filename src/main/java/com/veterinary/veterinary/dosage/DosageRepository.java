package com.veterinary.veterinary.dosage;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(path = "Dosages")
public interface DosageRepository extends JpaRepository<Dosage, Integer> {
}
