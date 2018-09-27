package pl.coderslab.medicaclinic.enitites;

import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.medicaclinic.enums.Cause;
import pl.coderslab.medicaclinic.enums.Status;

import javax.persistence.*;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "visits", uniqueConstraints = {@UniqueConstraint(columnNames = {"date", "doctor_id"})})
public class DoctorVisit {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Enumerated(EnumType.STRING)
    private Cause cause;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm")
    private LocalDateTime date;

    @Enumerated(EnumType.STRING)
    private Status status = Status.PENDING;
    private String diagnosis;
    private String prescription;
    private  String referalls;
    @ManyToOne
    private Patient patient;
    @ManyToOne
    private Doctor doctor;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Cause getCause() {
        return cause;
    }

    public void setCause(Cause cause) {
        this.cause = cause;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getPrescription() {
        return prescription;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public String getReferalls() {
        return referalls;
    }

    public void setReferalls(String referalls) {
        this.referalls = referalls;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }
}
