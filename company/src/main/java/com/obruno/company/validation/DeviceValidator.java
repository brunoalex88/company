package com.obruno.company.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.obruno.company.models.Device;

public class DeviceValidator implements Validator {

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "type", "field.required");
	}
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Device.class.isAssignableFrom(clazz);
	}
	
}
