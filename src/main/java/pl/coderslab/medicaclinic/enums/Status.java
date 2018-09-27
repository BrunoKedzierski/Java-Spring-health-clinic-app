package pl.coderslab.medicaclinic.enums;

public enum Status {
    PENDING("Pending"),
    APPROVED("Approved"),
    FINISHED("Finished");
    private String description;

    Status(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }
}
