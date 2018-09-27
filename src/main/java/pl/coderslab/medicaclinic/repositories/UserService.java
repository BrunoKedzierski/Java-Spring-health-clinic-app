package pl.coderslab.medicaclinic.repositories;

import pl.coderslab.medicaclinic.enitites.User;
import pl.coderslab.medicaclinic.enitites.User;

public interface UserService {
    User findByUserEmail(String email);

    void saveUser(User user);
    void saveAdmin(User user);
}
