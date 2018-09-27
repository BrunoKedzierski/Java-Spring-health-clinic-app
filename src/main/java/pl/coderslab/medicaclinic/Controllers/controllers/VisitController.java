package pl.coderslab.medicaclinic.Controllers.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.medicaclinic.enitites.Doctor;
import pl.coderslab.medicaclinic.enitites.DoctorVisit;
import pl.coderslab.medicaclinic.enitites.Patient;
import pl.coderslab.medicaclinic.enums.Cause;
import pl.coderslab.medicaclinic.repositories.DoctorRepository;
import pl.coderslab.medicaclinic.repositories.PatientRepository;
import pl.coderslab.medicaclinic.repositories.VisitRepository;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;
@RequestMapping("/admin/visit")
@Controller
public class VisitController {
    @Autowired
    PatientRepository patientRepositoryt;
    @Autowired
    DoctorRepository doctorRepository;
    @Autowired
    VisitRepository visitRepository;
    @ModelAttribute("causes")
    public Cause[] getCauses(){
       return Cause.values();
    }

    @GetMapping("/visits")
    public String getVisits(@RequestParam long id, Model model){
        List<DoctorVisit> doctorVisits =  visitRepository.getAllByPatientId(id);
        model.addAttribute("visits", doctorVisits);
        model.addAttribute("id", id);
        return "patientVisits";
    }



    @GetMapping("/choose")
    public String select(@RequestParam Long id, Model model){
        model.addAttribute("patientId", id);

        return "visitType";
    }

    @GetMapping("/add")
    public String add(@RequestParam String spec,@RequestParam Long patientId, Model model){
        List<Doctor> doctors =  doctorRepository.getAllBySpeciality(spec);
        Patient patient = patientRepositoryt.findOne(patientId);
        model.addAttribute("visit", new DoctorVisit());
        model.addAttribute("doctors", doctors);
        model.addAttribute("spec", spec);
        model.addAttribute("patient",patient);
        return "visitForm";
    }

    @PostMapping("/add")
    public void save(@Valid  DoctorVisit visit, HttpServletResponse response) throws IOException {
      visitRepository.save(visit);
      response.sendRedirect("/admin/patient/list");


    }
}
