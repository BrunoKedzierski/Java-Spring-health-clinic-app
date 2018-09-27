package pl.coderslab.medicaclinic.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.medicaclinic.enitites.Service;

public interface ServiceRepository extends JpaRepository<Service,Long> {
}
