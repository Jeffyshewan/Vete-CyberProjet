package com.veterinary.veterinary.prescription;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.Set;

@RepositoryRestResource(path = "prescriptions")
public interface PrescriptionRepository extends JpaRepository<Prescription, Integer> {
    public Set<Prescription> findPrescriptionByNameIsContaining(String name);
}
