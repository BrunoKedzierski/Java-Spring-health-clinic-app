package pl.coderslab.medicaclinic.enitites;

import pl.coderslab.medicaclinic.enums.Speciality;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "doctors")
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String surname;
    @Column(nullable = false, length = 245)
    @Enumerated(EnumType.STRING)
    private Speciality speciality;
    private String pesel;
    private String address;
    private char gender;
    @OneToMany(mappedBy = "doctor")
    private List<Patient> patients;
    @OneToMany(mappedBy = "doctor")
    List<DoctorVisit> visits;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPesel() {
        return pesel;
    }

    public void setPesel(String pesel) {
        this.pesel = pesel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Speciality getSpeciality() {
        return speciality;
    }

    public void setSpeciality(Speciality speciality) {
        this.speciality = speciality;
    }

    public char getGender() {
        return gender;
    }

    public void setGender(char gender) {
        this.gender = gender;
    }

    public List<Patient> getPatients() {
        return patients;
    }

    public void setPatients(List<Patient> patients) {
        this.patients = patients;
    }

    public List<DoctorVisit> getVisits() {
        return visits;
    }

    public void setVisits(List<DoctorVisit> visits) {
        this.visits = visits;
    }
}
