package pl.coderslab.medicaclinic.enums;

public enum Cause {
    EMERGENCY("Emergency"),
    APPOINTEMENT("Appointment"),
    REFERALL("Referall");
    private String description;

    Cause(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
