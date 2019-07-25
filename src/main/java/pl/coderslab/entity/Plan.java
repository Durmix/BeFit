package pl.coderslab.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "plans")
public class Plan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @OneToMany(mappedBy = "plan")
    private List<Comment> comments;

    @NotNull
    @ManyToOne
    private User author;

    @ManyToMany(mappedBy = "usedPlans")
    private List<User> users = new ArrayList<>();

    @NotBlank
    private String description;

    @Min(1500)
    private Integer calories;

    public void addUser(User user) {
        users.add(user);
    }

}
