package com.veterinary.veterinary.medicine;

import com.veterinary.veterinary.dosage.DosageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping(path = "/medicines")
public class MedicineController {

    @Autowired
    private MedicineRepository medicineRepository;
    @Autowired
    private DosageRepository dosageRepository;

    @GetMapping
    public Iterable<Medicine> getMedicines() {
        return medicineRepository.findAll();
    }

    @GetMapping("/{medicineId}")
    public Optional<Medicine> getMedicine(@PathVariable("medicineId") int medicineId) {
        return medicineRepository.findById(medicineId);
    }

    @GetMapping("/name/{name}")
    public Iterable<Medicine> getPrescription(@PathVariable("name") String name) {
        return medicineRepository.findMedicinesByNameIsContaining(name);
    }

    @PostMapping
    public Medicine addMedicine(@RequestBody Medicine newMedicine) {
        return medicineRepository.save(newMedicine);
    }

    @DeleteMapping("/{id}")
    public void deleteMedicine(@PathVariable int id) {
        medicineRepository.deleteById(id);
    }

    @PutMapping("/{id}")
    public Medicine updateMedicine(@PathVariable("id") int id, @RequestBody Medicine medicine) {
        medicine.setId(id);
        return medicineRepository.save(medicine);
    }
}
