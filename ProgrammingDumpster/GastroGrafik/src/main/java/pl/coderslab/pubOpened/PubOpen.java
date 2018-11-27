package pl.coderslab.pubOpened;

import pl.coderslab.pub.Pub;

import javax.persistence.*;

@Entity
@Table(name = "PUB_OPENED")
public class PubOpen {

    @Id
    private Long id;

    private boolean mon;
    private boolean tue;
    private boolean wed;
    private boolean thu;
    private boolean fri;
    private boolean sat;
    private boolean sun;

    @OneToOne
    @MapsId
    private Pub pub;

}
