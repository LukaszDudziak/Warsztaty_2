package pl.coderslab.schedule;

import pl.coderslab.employeeDisposition.EmployeeDisposition;
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
    private LocalDate createDate;
    @ManyToOne
    private PubOpen pubOpen;
    @OneToMany
    private List<EmployeeDisposition> employeeDisposition;

    private String workingEmployeeMon;
    private String workingEmployeeTue;
    private String workingEmployeeWed;
    private String workingEmployeeThu;
    private String workingEmployeeFri;
    private String workingEmployeeSat;
    private String workingEmployeeSun;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDate getCreateDate() {
        return createDate;
    }

    public void setCreateDate(LocalDate createDate) {
        this.createDate = createDate;
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

    public String getWorkingEmployeeWed() {
        return workingEmployeeWed;
    }

    public void setWorkingEmployeeWed(String workingEmployeeWed) {
        this.workingEmployeeWed = workingEmployeeWed;
    }

    public String getWorkingEmployeeThu() {
        return workingEmployeeThu;
    }

    public void setWorkingEmployeeThu(String workingEmployeeThu) {
        this.workingEmployeeThu = workingEmployeeThu;
    }

    public String getWorkingEmployeeFri() {
        return workingEmployeeFri;
    }

    public void setWorkingEmployeeFri(String workingEmployeeFri) {
        this.workingEmployeeFri = workingEmployeeFri;
    }

    public String getWorkingEmployeeSat() {
        return workingEmployeeSat;
    }

    public void setWorkingEmployeeSat(String workingEmployeeSat) {
        this.workingEmployeeSat = workingEmployeeSat;
    }

    public String getWorkingEmployeeSun() {
        return workingEmployeeSun;
    }

    public void setWorkingEmployeeSun(String workingEmployeeSun) {
        this.workingEmployeeSun = workingEmployeeSun;
    }

    @Override
    public String toString() {
        return "Schedule{" +
                "Poniedziałek:='" + workingEmployeeMon + '\'' +
                ", Wtorek='" + workingEmployeeTue + '\'' +
                ", Środa='" + workingEmployeeWed + '\'' +
                ", Czwartek='" + workingEmployeeThu + '\'' +
                ", Piątek='" + workingEmployeeFri + '\'' +
                ", Sobota='" + workingEmployeeSat + '\'' +
                ", Niedziela='" + workingEmployeeSun + '\'' +
                '}';
    }
}
