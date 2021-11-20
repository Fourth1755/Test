package syngenta.der.entities.bind;

import java.beans.PropertyEditorSupport;

import org.springframework.beans.factory.annotation.Autowired;

import syngenta.der.entities.Useraccount;
import syngenta.der.service.UserAccountService;
import syngenta.der.service.UserTrailService;

public class UserTrialBinder extends PropertyEditorSupport {

private @Autowired UserTrailService userTrailService;
	
	@Override
    public void setAsText(String text) {
		//Useraccount u = this.userTrailService.findById(Integer.valueOf(text));

        //this.setValue(u);
    }

	
}
