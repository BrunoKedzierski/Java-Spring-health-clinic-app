package pl.coderslab.medicaclinic.Converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.coderslab.medicaclinic.enitites.Patient;
import pl.coderslab.medicaclinic.repositories.PatientRepository;
@Component
public class PatientConverter implements Converter<String,Patient> {
    @Autowired
    PatientRepository patientRepository;

    public Patient convert(String source) {
        return patientRepository.findOne(Long.valueOf(source));
    }
}
