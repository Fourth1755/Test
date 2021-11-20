package syngenta.der.entities.bind;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import syngenta.der.entities.Position;
import syngenta.der.entities.Useraccount;
import syngenta.der.service.PositionService;
import syngenta.der.service.UserAccountService;

@Component
public class UserAccountBinder extends PropertyEditorSupport {

	private @Autowired UserAccountService userAccountService;
	
	@Override
    public void setAsText(String text) {
		Useraccount u = this.userAccountService.findById(Integer.valueOf(text));

        this.setValue(u);
    }

}
