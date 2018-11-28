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

    private int nMon;
    private int nTue;
    private int nWed;
    private int nThu;
    private int nFri;
    private int nSat;
    private int nSun;


    @OneToOne
    @MapsId
    private Pub pub;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public boolean isMon() {
        return mon;
    }

    public void setMon(boolean mon) {
        this.mon = mon;
    }

    public boolean isTue() {
        return tue;
    }

    public void setTue(boolean tue) {
        this.tue = tue;
    }

    public boolean isWed() {
        return wed;
    }

    public void setWed(boolean wed) {
        this.wed = wed;
    }

    public boolean isThu() {
        return thu;
    }

    public void setThu(boolean thu) {
        this.thu = thu;
    }

    public boolean isFri() {
        return fri;
    }

    public void setFri(boolean fri) {
        this.fri = fri;
    }

    public boolean isSat() {
        return sat;
    }

    public void setSat(boolean sat) {
        this.sat = sat;
    }

    public boolean isSun() {
        return sun;
    }

    public void setSun(boolean sun) {
        this.sun = sun;
    }

    public int getnMon() {
        return nMon;
    }

    public void setnMon(int nMon) {
        this.nMon = nMon;
    }

    public int getnTue() {
        return nTue;
    }

    public void setnTue(int nTue) {
        this.nTue = nTue;
    }

    public int getnWed() {
        return nWed;
    }

    public void setnWed(int nWed) {
        this.nWed = nWed;
    }

    public int getnThu() {
        return nThu;
    }

    public void setnThu(int nThu) {
        this.nThu = nThu;
    }

    public int getnFri() {
        return nFri;
    }

    public void setnFri(int nFri) {
        this.nFri = nFri;
    }

    public int getnSat() {
        return nSat;
    }

    public void setnSat(int nSat) {
        this.nSat = nSat;
    }

    public int getnSun() {
        return nSun;
    }

    public void setnSun(int nSun) {
        this.nSun = nSun;
    }

    public Pub getPub() {
        return pub;
    }

    public void setPub(Pub pub) {
        this.pub = pub;
    }
}
