package com.veterinary.veterinary.rdv;

import com.veterinary.veterinary.animal.Animal;
import com.veterinary.veterinary.animal.AnimalRepository;
import com.veterinary.veterinary.doctor.Doctor;
import com.veterinary.veterinary.doctor.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping(path = "/rdvs")
public class RdvController {

    @Autowired
    private RdvRepository rdvRepository;
    @Autowired
    private AnimalRepository animalRepository;
    @Autowired
    private DoctorRepository doctorRepository;

    @GetMapping
    public Iterable<Rdv> getRdv() {
        return rdvRepository.findAll();
    }

    @GetMapping("/{rdvId}")
    public Optional<Rdv> getRdv(@PathVariable("rdvId") int rdvId) {
        return rdvRepository.findById(rdvId);
    }

    @GetMapping("/animalId/{animalId}")
    public Iterable<Rdv> getRdvsByAnimalId(@PathVariable("animalId") int animalId) {
        Optional<Animal> opt = animalRepository.findById(animalId);
        return rdvRepository.findRdvByAnimal(opt);
    }

    @GetMapping("/doctorId/{doctorId}")
    public Iterable<Rdv> getRdvsByDoctorId(@PathVariable("doctorId") int doctorId) {
        Optional<Doctor> opt = doctorRepository.findById(doctorId);
        return rdvRepository.findRdvByDoctor(opt);
    }

    @PostMapping
    public Rdv addRdv(@RequestBody Rdv newRdv) {
        return rdvRepository.save(newRdv);
    }

    @DeleteMapping("/{id}")
    public void deleteRdv(@PathVariable int id) {
        rdvRepository.deleteById(id);
    }

    @PutMapping("/{id}")
    public Rdv updateRdv(@PathVariable("id") int id, @RequestBody Rdv rdv) {
        rdv.setId(id);
        return rdvRepository.save(rdv);
    }
}
