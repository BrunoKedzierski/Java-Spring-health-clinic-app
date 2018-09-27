package pl.coderslab.medicaclinic.Controllers.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.medicaclinic.enitites.Patient;
import pl.coderslab.medicaclinic.enitites.Service;
import pl.coderslab.medicaclinic.enitites.ServiceAppointment;
import pl.coderslab.medicaclinic.repositories.PatientRepository;
import pl.coderslab.medicaclinic.repositories.ServiceAppointmentRepository;
import pl.coderslab.medicaclinic.repositories.ServiceRepository;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin/serviceAppointement")
public class ServiceAppointmentController {
    @Autowired
    ServiceAppointmentRepository serviceAppointmentRepository;
    @Autowired
    ServiceRepository serviceRepository;
    @Autowired
    PatientRepository patientRepository;


    @GetMapping("/appointments")
    public String showAppointments(@RequestParam Long id, Model model){
        List<ServiceAppointment> serviceAppointments = serviceAppointmentRepository.getAllByPatientId(id);
        model.addAttribute("appointments", serviceAppointments);
        model.addAttribute("id", id);
        return "patientsAppointments";
    }

    @GetMapping("/book")
    public String book(@RequestParam Long patientId, Model model){
        Patient patient = patientRepository.findOne(patientId);
        List<Service> services = serviceRepository.findAll();
        model.addAttribute("services", services);
        model.addAttribute("patient", patient);
        model.addAttribute("appointment", new ServiceAppointment());
        return "appointmentForm";
    }
    @PostMapping("/book")
    public void save(@Valid ServiceAppointment serviceAppointment, HttpServletResponse response) throws IOException {
        serviceAppointmentRepository.save(serviceAppointment);
        response.sendRedirect("/admin/patient/list");


    }

}
