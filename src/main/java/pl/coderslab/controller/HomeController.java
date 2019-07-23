package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;
import pl.coderslab.service.LoginService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class HomeController {

    private UserRepository userRepository;
    private LoginService loginService;


    public HomeController(UserRepository userRepository, LoginService loginService) {
        this.userRepository = userRepository;
        this.loginService = loginService;
    }

    @RequestMapping("/home")
    public String homePage() {
        return "/home";
    }

    @GetMapping("/register")
    public String register(Model model) {
        model.addAttribute("user", new User());
        return "/registration";
    }

    @PostMapping("/register")
    public String registerUser(@Valid User user, BindingResult errors) {
        if (errors.hasErrors()) {
            return "/registration";
        }
        userRepository.save(user);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login() {
        return "/login";
    }

    @PostMapping("/login")
    public String login(HttpSession session, @RequestParam("login") String login, @RequestParam("password") String password) {
        User user = loginService.checkLoginData(login, password);

        if (user == null) {
            session.setAttribute("loginError", "loginError");
            return "/login";
        } else {
            session.setAttribute("loggedIn", user);
            session.removeAttribute("loginError");
            return "redirect:/home";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("loggedIn");
        return "redirect:/home";
    }

}
