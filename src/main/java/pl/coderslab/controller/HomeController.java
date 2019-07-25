package pl.coderslab.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;
import pl.coderslab.service.LoginService;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class HomeController {

    private UserRepository userRepository;
    private LoginService loginService;

    @Autowired
    public HomeController(UserRepository userRepository, LoginService loginService) {
        this.userRepository = userRepository;
        this.loginService = loginService;
    }

    @RequestMapping("/")
    public String home() {
        return "/home";
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
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userRepository.save(user);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(HttpSession session) {
        return "/login";
    }

    @PostMapping("/login")
    public String login(HttpSession session, @RequestParam("login") String login, @RequestParam("password") String password) {
        User user = loginService.checkLoginData(login, password);

        if (user == null) {
            session.setAttribute("notValid", "notValid");
            return "login";
        } else {
            session.setAttribute("logged", user);
            session.removeAttribute("notValid");
            if (user.getRole().equals("USER")){
                return "redirect:mainPage";
            } else {
                return "redirect:modPage";
            }
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("logged");
        return "redirect:/home";
    }

    @GetMapping("/mainPage")
    public String mainPage() {
        return "/mainPage";
    }

    @GetMapping("/modPage")
    public String modPage() {
        return "/modPage";
    }

    @GetMapping("/restore")
    public String restore() {
        return "/restoreForm";
    }

}
