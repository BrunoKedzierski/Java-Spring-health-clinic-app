package pl.coderslab.medicaclinic.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.medicaclinic.enitites.DoctorVisit;

import java.util.List;

public interface VisitRepository extends JpaRepository<DoctorVisit, Long> {
    @Query(value = "select * from visits where patient_id=?1", nativeQuery = true)
    public List<DoctorVisit> getAllByPatientId(Long id);
}
