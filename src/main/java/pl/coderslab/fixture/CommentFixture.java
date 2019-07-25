package pl.coderslab.fixture;

import org.springframework.stereotype.Component;
import pl.coderslab.entity.Comment;
import pl.coderslab.repository.CommentRepository;
import pl.coderslab.repository.PlanRepository;
import pl.coderslab.repository.UserRepository;

@Component
public class CommentFixture {

    private CommentRepository commentRepository;
    private PlanRepository planRepository;
    private UserRepository userRepository;

    public CommentFixture(CommentRepository commentRepository, PlanRepository planRepository, UserRepository userRepository) {
        this.commentRepository = commentRepository;
        this.planRepository = planRepository;
        this.userRepository = userRepository;
    }

    public void initData() {

        Comment comment = new Comment();
        comment.setPlan(planRepository.findOne((long) 1));
        comment.setUser(userRepository.findByLogin("Ricky"));
        commentRepository.save(comment);

        Comment comment2 = new Comment();
        comment2.setPlan(planRepository.findOne((long) 2));
        comment2.setUser(userRepository.findByLogin("Micky"));
        commentRepository.save(comment2);

        Comment comment3 = new Comment();
        comment3.setPlan(planRepository.findOne((long) 1));
        comment3.setUser(userRepository.findByLogin("Marty"));
        commentRepository.save(comment3);

        Comment comment4 = new Comment();
        comment4.setPlan(planRepository.findOne((long) 3));
        comment4.setUser(userRepository.findByLogin("Ricky"));
        commentRepository.save(comment4);

        Comment comment5 = new Comment();
        comment5.setPlan(planRepository.findOne((long) 1));
        comment5.setUser(userRepository.findByLogin("Micky"));
        commentRepository.save(comment5);

        Comment comment6 = new Comment();
        comment6.setPlan(planRepository.findOne((long) 3));
        comment6.setUser(userRepository.findByLogin("Marty"));
        commentRepository.save(comment6);

    }

}
