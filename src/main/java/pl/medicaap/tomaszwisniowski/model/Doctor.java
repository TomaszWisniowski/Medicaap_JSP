/**
 * @author Tomasz Wiśniowski
 * @version 1.0
 * @since 5/04/22

 */

package pl.medicaap.tomaszwisniowski.model;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "doctors")
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "medical_license_number")
    private int medical_license_number;

    @Column(name = "first_name")
    private String first_name;

    @Column(name = "last_name")
    private String last_name;

    @Column(name = "date_of_birth")
    private LocalDate date_of_birth;

    @Column(name = "tel")
    private int tel;

    @Column(name = "city")
    private String city;

    @Column(name = "street")
    private String street;

    @Column(name = "house_number")
    private int house_number;

    @Column(name = "flat_number")
    private int flat_number;


    public Doctor(int id, int medical_license_number, String first_name, String last_name, LocalDate date_of_birth, int tel, String city, String street, int house_number, int flat_number) {
        this.id = id;
        this.medical_license_number = medical_license_number;
        this.first_name = first_name;
        this.last_name = last_name;
        this.date_of_birth = date_of_birth;
        this.tel = tel;
        this.city = city;
        this.street = street;
        this.house_number = house_number;
        this.flat_number = flat_number;
    }

    public Doctor() {
    }

    public static DoctorBuilder builder() {
        return new DoctorBuilder();
    }

    public int getId() {
        return this.id;
    }

    public int getMedical_license_number() {
        return this.medical_license_number;
    }

    public String getFirst_name() {
        return this.first_name;
    }

    public String getLast_name() {
        return this.last_name;
    }

    public LocalDate getDate_of_birth() {
        return this.date_of_birth;
    }

    public int getTel() {
        return this.tel;
    }

    public String getCity() {
        return this.city;
    }

    public String getStreet() {
        return this.street;
    }

    public int getHouse_number() {
        return this.house_number;
    }

    public int getFlat_number() {
        return this.flat_number;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setMedical_license_number(int medical_license_number) {
        this.medical_license_number = medical_license_number;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setDate_of_birth(LocalDate date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public void setHouse_number(int house_number) {
        this.house_number = house_number;
    }

    public void setFlat_number(int flat_number) {
        this.flat_number = flat_number;
    }

    public String toString() {
        return "Doctor(id=" + this.getId() + ", medical_license_number=" + this.getMedical_license_number() + ", first_name=" + this.getFirst_name() + ", last_name=" + this.getLast_name() + ", date_of_birth=" + this.getDate_of_birth() + ", tel=" + this.getTel() + ", city=" + this.getCity() + ", street=" + this.getStreet() + ", house_number=" + this.getHouse_number() + ", flat_number=" + this.getFlat_number() + ")";
    }

    public static class DoctorBuilder {
        private int id;
        private int medical_license_number;
        private String first_name;
        private String last_name;
        private LocalDate date_of_birth;
        private int tel;
        private String city;
        private String street;
        private int house_number;
        private int flat_number;

        DoctorBuilder() {
        }

        public DoctorBuilder id(int id) {
            this.id = id;
            return this;
        }

        public DoctorBuilder medical_license_number(int medical_license_number) {
            this.medical_license_number = medical_license_number;
            return this;
        }

        public DoctorBuilder first_name(String first_name) {
            this.first_name = first_name;
            return this;
        }

        public DoctorBuilder last_name(String last_name) {
            this.last_name = last_name;
            return this;
        }

        public DoctorBuilder date_of_birth(LocalDate date_of_birth) {
            this.date_of_birth = date_of_birth;
            return this;
        }

        public DoctorBuilder tel(int tel) {
            this.tel = tel;
            return this;
        }

        public DoctorBuilder city(String city) {
            this.city = city;
            return this;
        }

        public DoctorBuilder street(String street) {
            this.street = street;
            return this;
        }

        public DoctorBuilder house_number(int house_number) {
            this.house_number = house_number;
            return this;
        }

        public DoctorBuilder flat_number(int flat_number) {
            this.flat_number = flat_number;
            return this;
        }

        public Doctor build() {
            return new Doctor(id, medical_license_number, first_name, last_name, date_of_birth, tel, city, street, house_number, flat_number);
        }

        public String toString() {
            return "Doctor.DoctorBuilder(id=" + this.id + ", medical_license_number=" + this.medical_license_number + ", first_name=" + this.first_name + ", last_name=" + this.last_name + ", date_of_birth=" + this.date_of_birth + ", tel=" + this.tel + ", city=" + this.city + ", street=" + this.street + ", house_number=" + this.house_number + ", flat_number=" + this.flat_number + ")";
        }
    }
}
