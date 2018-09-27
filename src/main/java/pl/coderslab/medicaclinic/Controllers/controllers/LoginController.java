package pl.coderslab.medicaclinic.Controllers.controllers;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pl.coderslab.medicaclinic.enitites.User;
import pl.coderslab.medicaclinic.enitites.UserServiceImpl;
import pl.coderslab.medicaclinic.repositories.UserService;

import javax.validation.Valid;

@Controller
public class LoginController {
    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @Autowired
    private UserServiceImpl userService;
    @RequestMapping(value="/registration", method = RequestMethod.GET)
    public String registration(Model model){
        User user = new User();
        model.addAttribute("user", user);
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    @ResponseBody
    public String createNewUser(@Valid User user, BindingResult bindingResult) {

            userService.saveAdmin(user);
        return "udao";
        }

    }

