package pl.coderslab.medicaclinic.Controllers.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.medicaclinic.enitites.*;

import pl.coderslab.medicaclinic.enums.Status;
import pl.coderslab.medicaclinic.repositories.DoctorRepository;
import pl.coderslab.medicaclinic.repositories.PatientRepository;
import pl.coderslab.medicaclinic.repositories.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.Base64;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin/patient")
public class PatientController {
    @Autowired
    PatientRepository patientRepository;
    @Autowired
    DoctorRepository doctorRepository;
    @Autowired
    private UserService userService;

    @ModelAttribute("doctors")
    public List<Doctor> doctors() { return doctorRepository.findAll();}




    @GetMapping("/add")
    public String patientForm(Model model){
        model.addAttribute("patient", new Patient());

        return "patientForm";
    }
    @PostMapping("/add")
    public void patientForm(@Valid Patient patient, HttpServletResponse response) throws IOException {
        patient.setDateAdmitted(Date.from(Instant.now()));
        patientRepository.save(patient);
        User user = new User();
        user.setActive(1);
        user.setPassword(patient.getPassword());
        user.setEmail(patient.getUsername());
        userService.saveUser(user);
        response.sendRedirect("/admin/patient/list");
    }
    @PostMapping("/update")
    public void update(@ModelAttribute Patient patient, HttpServletResponse response) throws IOException {
        patientRepository.save(patient);
        response.sendRedirect("/admin/patient/list");


    }

    @GetMapping("/update")
    public String update(@RequestParam Long id, Model model) {
        Patient patient = patientRepository.findOne(id);
        model.addAttribute("patient", patient);
        return "patientForm";
    }
    @GetMapping("/list")
    public String patientList(Model model){
        List <Patient> patients = patientRepository.findAll();
        model.addAttribute("patients",patients);
        return "patientList";
    }


    @GetMapping("/delete")
    public void   deletett(@RequestParam Long id, HttpServletResponse response) throws IOException {

        patientRepository.delete(id);
        response.sendRedirect("/admin/patient/list");

    }
}
