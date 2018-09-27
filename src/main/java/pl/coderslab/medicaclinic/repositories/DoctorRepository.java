package pl.coderslab.medicaclinic.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.medicaclinic.enitites.Doctor;

import java.util.List;

public interface DoctorRepository extends JpaRepository<Doctor,Long> {
    @Query(value = "select * from doctors where speciality=?1", nativeQuery = true)
    public List<Doctor> getAllBySpeciality(String string);
}
