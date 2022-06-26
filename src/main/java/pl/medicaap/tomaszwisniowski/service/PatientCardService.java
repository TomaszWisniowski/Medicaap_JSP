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
import pl.medicaap.tomaszwisniowski.model.PatientCard;
import pl.medicaap.tomaszwisniowski.repository.DoctorRepository;
import pl.medicaap.tomaszwisniowski.repository.PatientCardRepository;
import pl.medicaap.tomaszwisniowski.repository.PatientRepository;

import java.time.LocalDate;
import java.util.List;


@Service
public class PatientCardService {

    @Autowired
    private PatientCardRepository patientCardRepository;

    @Autowired
    private PatientRepository patientRepository;

    public PatientCard addPatientCard(int patient_id, String interview, String physical_examination, String diagnosis, String visit_history) {

        Patient patient = patientRepository.getById(patient_id);

        PatientCard patientCard = PatientCard.builder()
                .patient(patient)
                .interview(interview)
                .physical_examination(physical_examination)
                .diagnosis(diagnosis)
                .visit_history(visit_history)
                .build();
        return patientCardRepository.save(patientCard);
    }

    public List<PatientCard> getPatientCards(){
        return patientCardRepository.findAll();
    }

}
