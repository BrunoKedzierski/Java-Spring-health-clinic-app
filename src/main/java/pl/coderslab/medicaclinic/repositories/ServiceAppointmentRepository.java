package pl.coderslab.medicaclinic.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.medicaclinic.enitites.ServiceAppointment;

import java.util.List;

public interface ServiceAppointmentRepository extends JpaRepository<ServiceAppointment, Long> {
    @Query(value = "select * from service_appointment where patient_id=?1", nativeQuery = true)
    public List<ServiceAppointment> getAllByPatientId(Long id);


}
