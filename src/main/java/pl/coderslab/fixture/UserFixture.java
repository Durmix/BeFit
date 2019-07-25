package pl.coderslab.fixture;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;


@Component
public class UserFixture {
    
    private UserRepository userRepository;

    @Autowired
    public UserFixture(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void initData() {

        User user = new User();
        user.setLogin("Johny");
        user.setFirstName("John");
        user.setLastName("Flanagan");
        user.setPassword("qwerty");
        user.setEmail("poczta@gmail.com");
        user.setAddress("Ulica 30");
        user.setRole("MOD");
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userRepository.save(user);

        User user2 = new User();
        user2.setLogin("Ricky");
        user2.setFirstName("Rick");
        user2.setLastName("Riordan");
        user2.setPassword("qwerty");
        user2.setEmail("poczta@gmail.pl");
        user2.setAddress("Aleja 20");
        user2.setRole("USER");
        user2.setPassword(BCrypt.hashpw(user2.getPassword(), BCrypt.gensalt()));
        userRepository.save(user2);

        User user3 = new User();
        user3.setLogin("Micky");
        user3.setFirstName("Mick");
        user3.setLastName("Roark");
        user3.setPassword("qwerty");
        user3.setEmail("micky@wp.pl");
        user3.setAddress("Piøsudskiego 10");
        user3.setRole("USER");
        user3.setPassword(BCrypt.hashpw(user3.getPassword(), BCrypt.gensalt()));
        userRepository.save(user3);

        User user4 = new User();
        user4.setLogin("Marty");
        user4.setFirstName("Marcin");
        user4.setLastName("Kowal");
        user4.setPassword("qwerty");
        user4.setEmail("marcin@gmail.pl");
        user4.setAddress("Mickiewicza 15");
        user4.setRole("USER");
        user4.setPassword(BCrypt.hashpw(user4.getPassword(), BCrypt.gensalt()));
        userRepository.save(user4);

        User user5 = new User();
        user5.setLogin("Janek");
        user5.setFirstName("Jan");
        user5.setLastName("Sikora");
        user5.setPassword("qwerty");
        user5.setEmail("janek@wp.pl");
        user5.setAddress("Pusta 00");
        user5.setRole("MOD");
        user5.setPassword(BCrypt.hashpw(user5.getPassword(), BCrypt.gensalt()));
        userRepository.save(user5);

    }

}
