/**
 * @author Tomasz Wiśniowski
 * @version 1.0
 * @since 5/04/22

 */

package pl.medicaap.tomaszwisniowski.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.medicaap.tomaszwisniowski.model.Doctor;
import pl.medicaap.tomaszwisniowski.model.Nurse;
import pl.medicaap.tomaszwisniowski.repository.DoctorRepository;
import pl.medicaap.tomaszwisniowski.repository.NurseRepository;

import java.time.LocalDate;
import java.util.List;


@Service
public class NurseService {

    @Autowired
    private NurseRepository nurseRepository;

    public Nurse addNurse(int medical_license_number, String first_name, String last_name, LocalDate date_of_birth, int tel, String city, String street, int house_number, int flat_number) {
        Nurse nurse = Nurse.builder()
                .medical_license_number(medical_license_number)
                .first_name(first_name)
                .last_name(last_name)
                .date_of_birth(date_of_birth)
                .tel(tel)
                .city(city)
                .street(street)
                .house_number(house_number)
                .flat_number(flat_number)
                .build();
        return nurseRepository.save(nurse);
    }

    public List<Nurse> getNurses(){
        return nurseRepository.findAll();
    }

}
