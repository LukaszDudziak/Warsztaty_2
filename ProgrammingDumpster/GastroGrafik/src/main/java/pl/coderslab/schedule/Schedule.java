package pl.coderslab.schedule;

import pl.coderslab.employee.Employee;
import pl.coderslab.employeeDisposition.EmployeeDisposition;
import pl.coderslab.pub.Pub;
import pl.coderslab.pubOpened.PubOpen;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "SCHEDULE")
public class Schedule {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private LocalDate date;
    @ManyToOne
    private PubOpen pubOpen;
    @OneToMany
    private List<EmployeeDisposition> employeeDisposition;

    private String workingEmployeeMon;
    private String workingEmployeeTue;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public PubOpen getPubOpen() {
        return pubOpen;
    }

    public void setPubOpen(PubOpen pubOpen) {
        this.pubOpen = pubOpen;
    }

    public List<EmployeeDisposition> getEmployeeDisposition() {
        return employeeDisposition;
    }

    public void setEmployeeDisposition(List<EmployeeDisposition> employeeDisposition) {
        this.employeeDisposition = employeeDisposition;
    }

    public String getWorkingEmployeeMon() {
        return workingEmployeeMon;
    }

    public void setWorkingEmployeeMon(String workingEmployeeMon) {
        this.workingEmployeeMon = workingEmployeeMon;
    }

    public String getWorkingEmployeeTue() {
        return workingEmployeeTue;
    }

    public void setWorkingEmployeeTue(String workingEmployeeTue) {
        this.workingEmployeeTue = workingEmployeeTue;
    }
}
