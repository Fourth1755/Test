package syngenta.der.entities.bind;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import syngenta.der.entities.Country;
import syngenta.der.entities.Position;
import syngenta.der.service.CountryService;
import syngenta.der.service.PositionService;

@Component
public class PositionBinder extends PropertyEditorSupport {

	private @Autowired PositionService positionService;
	
	@Override
    public void setAsText(String text) {
		Position c = this.positionService.findById(Integer.valueOf(text));

        this.setValue(c);
    }

	
}
