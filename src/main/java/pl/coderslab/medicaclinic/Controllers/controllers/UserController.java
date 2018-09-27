package pl.coderslab.medicaclinic.Controllers.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {

    @GetMapping("/panel")
    public String showUser(){
        return "userPanel";
    }
}
