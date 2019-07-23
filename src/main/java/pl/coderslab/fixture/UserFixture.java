package pl.coderslab.fixture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;


@Component
public class UserFixture {
    
    UserRepository userRepository;

    @Autowired
    public UserFixture(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void initData(){

        User user = new User();
        user.setLogin("Johny");
        user.setFirstName("John");
        user.setLastName("Flanagan");
        user.setPassword("zxcqwe123");
        user.setEmail("poczta@gmail.com");
        user.setAddress("Ulica 30");
        userRepository.save(user);

        User user2 = new User();
        user2.setLogin("Ricky");
        user2.setFirstName("Rick");
        user2.setLastName("Riordan");
        user2.setPassword("qwezxc321");
        user2.setEmail("poczta@wp.pl");
        user2.setAddress("Aleja 20");
        userRepository.save(user2);

    }

}
