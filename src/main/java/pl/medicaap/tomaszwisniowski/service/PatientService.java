/**
 * @author Tomasz Wiśniowski
 * @version 1.0
 * @since 5/04/22

 */

package pl.medicaap.tomaszwisniowski.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.medicaap.tomaszwisniowski.model.Doctor;
import pl.medicaap.tomaszwisniowski.model.Patient;
import pl.medicaap.tomaszwisniowski.repository.DoctorRepository;
import pl.medicaap.tomaszwisniowski.repository.PatientRepository;

import java.time.LocalDate;
import java.util.List;


@Service
public class PatientService {

    @Autowired
    private PatientRepository patientRepository;

    public Patient addPatient(int pesel, String first_name, String last_name, LocalDate date_of_birth, int tel, String city, String street, int house_number, int flat_number) {
        Patient patient = Patient.builder()
                .pesel(pesel)
                .first_name(first_name)
                .last_name(last_name)
                .date_of_birth(date_of_birth)
                .tel(tel)
                .city(city)
                .street(street)
                .house_number(house_number)
                .flat_number(flat_number)
                .build();
        return patientRepository.save(patient);
    }

    public List<Patient> getPatients(){
        return patientRepository.findAll();
    }

}
