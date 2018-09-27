package pl.coderslab.medicaclinic.enitites;
import lombok.Data;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;


@Entity
@Table(name = "services")
public class Service {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String description;
    private Double cost;
    @OneToMany(mappedBy = "service")
    private List<ServiceAppointment> serviceAppointments;


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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getCost() {
        return cost;
    }

    public void setCost(Double cost) {
        this.cost = cost;
    }

    public List<ServiceAppointment> getServiceAppointments() {
        return serviceAppointments;
    }

    public void setServiceAppointments(List<ServiceAppointment> serviceAppointments) {
        this.serviceAppointments = serviceAppointments;
    }
}
