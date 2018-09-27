package pl.coderslab.medicaclinic.Converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import org.springframework.stereotype.Component;
import pl.coderslab.medicaclinic.enitites.Doctor;
import pl.coderslab.medicaclinic.repositories.DoctorRepository;
@Component
public class DoctorConverter implements Converter<String, Doctor> {
	@Autowired
	DoctorRepository doctorRepository;

	public Doctor convert(String source) {
		return doctorRepository.findOne(Long.valueOf(source));
	}

}
