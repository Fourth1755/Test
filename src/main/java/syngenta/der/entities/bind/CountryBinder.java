package syngenta.der.entities.bind;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import syngenta.der.entities.Country;
import syngenta.der.service.CountryService;


@Component
public class CountryBinder extends  PropertyEditorSupport {

	private @Autowired CountryService countryService;
	
	@Override
    public void setAsText(String text) {
		Country c = this.countryService.findById(Integer.valueOf(text));

        this.setValue(c);
    }

}
