package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Plan;

@Repository
public interface PlanRepository extends JpaRepository<Plan, Long> {

    Plan findByName(String name);

}
