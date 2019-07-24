package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/account/{id}")
    public String account(@PathVariable Long id, Model model) {
        User user = userService.findUser(id);
        model.addAttribute("user", user);
        return "profile";
    }

    @GetMapping("/changeEmail/{id}")
    public String changeEmail(@PathVariable Long id, Model model) {
        User user = userService.findUser(id);
        model.addAttribute("user", user);
        return "/email";
    }

    @PostMapping("/changeEmail/{id}")
    public String changeEmail(@PathVariable Long id, @ModelAttribute User user) {
        userService.save(user);
        return "redirect:/account/" + id;
    }

}
