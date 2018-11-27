package pl.coderslab.employee;


import javax.persistence.*;

@Entity
@Table(name = "EMPLOYEE_DISP")
public class EmployeeDisposition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private boolean mon;
    private boolean tue;
    private boolean wed;
    private boolean thu;
    private boolean fri;
    private boolean sat;
    private boolean sun;
}
