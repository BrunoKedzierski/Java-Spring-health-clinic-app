package pl.coderslab.medicaclinic.enums;
public enum  Service {
    ECG("Electrocardiography", 120.0),
    RADIOGRAPHY("Radiography", 100.0),
    BLOOD_TESTS("Blood tests",80.0),
    TOMOGRAPHY("Tomography",300.0),
    ALLERGY_SKIN_TEST("Allergy skin test", 110.0),
    SPIROMETRY("Spirometry", 99.0),
    GTT("Glucose tolerance test",70.0),
    GASTROSCOPY("Gastroscopy", 300.0),
    HOLTER_MONITOR("Holter momitor", 200.0),
    USG("Ultrasonography",100.0),
    EEG("Electroencephalography", 180.0),
    COLONOSCOPY("Colonoscopy", 400.0),
    UROGRAPHY("Urography", 200.0),
    ELECTROMYOGRAPHY("Electromyography" ,300.0),
    ENDOSCOPY("Endoscopy" ,189.00);
    public String description;
    public double cost;

    Service(String description, double cost) {
        this.description = description;
        this.cost = cost;
    }

    public String getDescription() {
        return description;
    }

    public double getCost() {
        return cost;
    }
}
