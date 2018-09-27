package pl.coderslab.medicaclinic.enitites;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;


import javax.persistence.*;
import javax.validation.constraints.Min;

import java.time.Instant;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
@Data
@Entity
@Table(name = "patients")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String surname;
    private String pesel;
    @Column(name = "date_admitted")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateAdmitted = Date.from(Instant.now());
    private int height;
    private int weight;

    private int age;

    private char gender;
    @Column(name = "phone_number")
    private long phoneNumber;
    private String address;
    @ManyToOne
    private Doctor doctor;
    @Column(nullable = false, unique = true)
    private String username;
    private String password;
    private int enabled;
    @OneToMany(mappedBy = "patient")
    List<DoctorVisit> visits;
    @OneToMany(mappedBy = "patient")
    private List<ServiceAppointment> serviceAppointments;
    @OneToOne
    User user;




}
