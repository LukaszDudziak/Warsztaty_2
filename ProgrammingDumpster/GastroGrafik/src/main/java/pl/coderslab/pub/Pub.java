package pl.coderslab.pub;

import javax.persistence.*;

@Entity
@Table(name = "PUB")
public class Pub {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String address;
    private String contact;

}
