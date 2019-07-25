package pl.coderslab.service;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.Plan;
import pl.coderslab.entity.User;
import pl.coderslab.repository.PlanRepository;

import javax.transaction.Transactional;

@Service
@Transactional
public class PlanService {

    private PlanRepository planRepository;

    public PlanService(PlanRepository planRepository) {
        this.planRepository = planRepository;
    }

    public Plan findPlan(Long id) {
        return planRepository.findOne(id);
    }

    public void save(Plan plan) {
        planRepository.save(plan);
    }

}
