package pl.coderslab.medicaclinic.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.medicaclinic.enitites.Patient;

public interface PatientRepository extends JpaRepository<Patient, Long> {



}
