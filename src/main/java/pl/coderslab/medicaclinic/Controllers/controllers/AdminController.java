package pl.coderslab.medicaclinic.Controllers.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.medicaclinic.enitites.Doctor;
import pl.coderslab.medicaclinic.repositories.DoctorRepository;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    DoctorRepository doctorRepository;
    @GetMapping("/panel")
    public String showPanel(Model model){
        List<Doctor> doctors = doctorRepository.findAll();
        model.addAttribute("doctors",doctors);

        return "adminPanel";
    }
}
