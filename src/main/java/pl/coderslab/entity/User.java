package pl.coderslab.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min = 5, max = 15)
    @Column(unique = true)
    private String login;

    @NotBlank
    private String firstName;

    @NotBlank
    private String lastName;

    @NotBlank
    private String password;

    @Email
    @NotBlank
    @Column(unique = true)
    private String email;

    private String address;

    @NotBlank
    private String role = "USER";

    @ManyToMany
    @ToString.Exclude
    private List<Plan> usedPlans;

    @OneToMany(mappedBy = "author")
    @ToString.Exclude
    private List<Plan> createdPlans;

    @OneToMany(mappedBy = "user")
    @ToString.Exclude
    private List<Comment> comments;

}

