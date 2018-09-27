package pl.coderslab.medicaclinic.Controllers.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.medicaclinic.enitites.Service;
import pl.coderslab.medicaclinic.repositories.ServiceRepository;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin/service")
public class ServiceControlller {
    @Autowired
    ServiceRepository serviceRepository;

    @GetMapping("/list")
    public String showServices(Model model){
        List<Service> services = serviceRepository.findAll();
        model.addAttribute("services", services);
        return "servicesList";

    }

    @GetMapping("/add")
    public String addService(Model model){
        model.addAttribute("service", new Service());
        return "serviceForm";
    }
    @PostMapping("/add")
    public void  saveService(@Valid Service service, HttpServletResponse response) throws IOException {
        serviceRepository.save(service);
        response.sendRedirect("/admin/service/list");
    }
    @GetMapping("/delete")
    public void   deletett(@RequestParam Long id, HttpServletResponse response) throws IOException {

        serviceRepository.delete(id);
        response.sendRedirect("/admin/service/list");

    }
    @PostMapping("/update")
    public void update(@Valid Service service, HttpServletResponse response) throws IOException {
        serviceRepository.save(service);
        response.sendRedirect("/admin/service/list");


    }

    @GetMapping("/update")
    public String update(@RequestParam Long id, Model model) {
        Service service = serviceRepository.findOne(id);
        model.addAttribute("service", service);
        return "serviceForm";
    }
}
