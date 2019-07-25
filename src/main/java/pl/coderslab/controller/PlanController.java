package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.entity.Plan;
import pl.coderslab.repository.PlanRepository;
import pl.coderslab.service.PlanService;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/plan")
public class PlanController {

    private PlanService planService;
    private PlanRepository planRepository;

    @Autowired
    public PlanController(PlanService planService, PlanRepository planRepository) {
        this.planService = planService;
        this.planRepository = planRepository;
    }

    @GetMapping("/list")
    public String list(Model model) {
        List<Plan> plans = planRepository.findAll();
        model.addAttribute("plans", plans);
        return "/planList";
    }

    @RequestMapping(value = "/edit", produces = "text/plain;charset=UTF-8")
    public String editEntity(@RequestParam Long id, HttpServletResponse response, Model model){
        response.setCharacterEncoding("UTF-8");
        Plan plan = planRepository.findOne(id);
        model.addAttribute("plan", plan);
        model.addAttribute("actionUrl", "/plan/form");
        return "/planForm";
    }

}
