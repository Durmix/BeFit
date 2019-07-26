package pl.coderslab.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/account/{id}")
    public String account(@PathVariable Long id, Model model) {
        User user = userService.findUserWithPlans(id);
        model.addAttribute(user);
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
        return "redirect:/user/account/" + id;
    }

    @GetMapping("/changePassword/{id}")
    public String changePassword(@PathVariable Long id, Model model) {
        User user = userService.findUser(id);
        model.addAttribute("user", user);
        return "/password";
    }

    @PostMapping("/changePassword/{id}")
    public String changePassword(@PathVariable Long id, @ModelAttribute User user) {
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userService.save(user);
        return "redirect:/user/account/" + id;
    }

    @GetMapping("/changeAddress/{id}")
    public String changeAddress(@PathVariable Long id, Model model) {
        User user = userService.findUser(id);
        model.addAttribute("user", user);
        return "/address";
    }

    @PostMapping("/changeAddress/{id}")
    public String changeAddress(@PathVariable Long id, @ModelAttribute User user) {
        userService.save(user);
        return "redirect:/user/account/" + id;
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        userService.delete(id);
        return "redirect:/home";
    }

}
