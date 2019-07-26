package pl.coderslab.service;

import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

import javax.transaction.Transactional;

@Service
@Transactional
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User findUser(Long id) {
        return userRepository.findOne(id);
    }

    public User findUserWithPlans(Long id) {
        User user = userRepository.findOne(id);
        if (user.getRole().equals("MOD")) {
            Hibernate.initialize(user.getCreatedPlans());
        } else {
            Hibernate.initialize(user.getUsedPlans());
        }
        return user;
    }

    public void save(User user) {
        userRepository.save(user);
    }

    public void delete(Long id) {
        userRepository.delete(id);
    }

}
