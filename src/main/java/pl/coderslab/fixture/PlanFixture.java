package pl.coderslab.fixture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.coderslab.entity.Plan;
import pl.coderslab.repository.PlanRepository;
import pl.coderslab.repository.UserRepository;

@Component
public class PlanFixture {

    private PlanRepository planRepository;
    private UserRepository userRepository;

    @Autowired
    public PlanFixture(PlanRepository planRepository, UserRepository userRepository) {
        this.planRepository = planRepository;
        this.userRepository = userRepository;
    }

    public void initData() {

        Plan plan = new Plan();
        plan.setAuthor(userRepository.findByLogin("Johny"));
        plan.setName("Fit");
        plan.setCalories(2137);
        plan.setDescription("super plan bardzo fajny");
        plan.addUser(userRepository.findByLogin("Janek"));
        planRepository.save(plan);

        Plan plan2 = new Plan();
        plan2.setAuthor(userRepository.findByLogin("Janek"));
        plan2.setName("Fat");
        plan2.setCalories(4890);
        plan2.setDescription("super plan bardzo fajny");
        plan2.addUser(userRepository.findByLogin("Micky"));
        plan2.addUser(userRepository.findByLogin("Marty"));
        planRepository.save(plan2);

        Plan plan3 = new Plan();
        plan3.setAuthor(userRepository.findByLogin("Janek"));
        plan3.setName("takie se");
        plan3.setCalories(3200);
        plan3.setDescription("super plan bardzo fajnye");
        plan3.addUser(userRepository.findByLogin("Ricky"));
        plan3.addUser(userRepository.findByLogin("Marty"));
        planRepository.save(plan3);

    }

}
