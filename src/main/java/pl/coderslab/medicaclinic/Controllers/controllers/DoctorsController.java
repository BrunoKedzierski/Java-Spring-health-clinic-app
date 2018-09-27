package pl.coderslab.medicaclinic.Controllers.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.medicaclinic.enitites.Doctor;
import pl.coderslab.medicaclinic.enums.Speciality;
import pl.coderslab.medicaclinic.repositories.DoctorRepository;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@RequestMapping("/admin/doctor")
@Controller
public class DoctorsController {
    @Autowired
    DoctorRepository doctorRepository;

    @ModelAttribute("specialities")
    public Speciality[] getSpec(){
        return Speciality.values();
    }


    @GetMapping("/add")
    public String addDoctor(Model model){
        model.addAttribute("doctor", new Doctor());

        return "doctorForm";
    }
    @PostMapping("/add")
    public void addDoct(@Valid Doctor doctor, HttpServletResponse response) throws IOException {
        doctorRepository.save(doctor);
            response.sendRedirect("/admin/panel");

    }
    @PostMapping("/update")
    public void update(@ModelAttribute Doctor doctor, HttpServletResponse response) throws IOException {
        doctorRepository.save(doctor);
        response.sendRedirect("/admin/panel");

    }

    @GetMapping("/update")
    public String update(@RequestParam Long id, Model model) {
        Doctor doctor = doctorRepository.findOne(id);
        model.addAttribute("doctor", doctor);
        return "doctorForm";
    }
    @GetMapping("/list")
    public String showDoctors(Model model){
        List <Doctor> doctors = doctorRepository.findAll();
        model.addAttribute("doctors", doctors);
        return "doctorList";
    }
    @GetMapping("/show")
    public String showDoctorsBySpec(@RequestParam String spec, Model model){
        List<Doctor> doctors = doctorRepository.getAllBySpeciality(spec);
        model.addAttribute("doctors",doctors);
        model.addAttribute("spec", spec);
        return "adminDoctors";

    }


    @GetMapping("/delete")
    public void   deletett(@RequestParam Long id, HttpServletResponse response) throws IOException {

        doctorRepository.delete(id);
        response.sendRedirect("/admin/panel");

    }


}
