package pl.coderslab.medicaclinic.enums;

public enum Speciality {
    PEDIATRICIAN("Pediatrician"),
    CARDIOLOGIST("Cardiologist"),
    ALLERGIST("Allergist"),
    SURGEON("Surgeon"),
    PSYCHIATRIST("Psychiatrist"),
    NEUROLOGIST("Neurologist"),
    PULMONOLOGIST("Pulmonologist"),
    INTERNIST("Internist"),
    OCULIST("Oculist"),
    GYNECOLOGIST("Gynecologist"),
    PROCTOLOGIST("Proctologist"),
    DENTIST("Dentist"),
    DERMATOLOGIST("Dermatologist"),
    ANASTHESIOLOGIST("Anasthesiologist");
    public String description;
    Speciality(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

}
