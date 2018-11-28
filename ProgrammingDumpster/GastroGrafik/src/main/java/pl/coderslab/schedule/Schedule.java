package pl.coderslab.schedule;

import pl.coderslab.pubOpened.PubOpen;

import javax.persistence.*;

@Entity
@Table(name = "SCHEDULE")
public class Schedule {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    //połączenie z pracownikiem

}
