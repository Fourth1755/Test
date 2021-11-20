package syngenta.der.entities.bind;

import java.beans.PropertyEditorSupport;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import syngenta.der.entities.Plot;
import syngenta.der.entities.Position;
import syngenta.der.service.PlotService;
import syngenta.der.service.PositionService;

@Component
public class PlotBinder extends PropertyEditorSupport {
	
private @Autowired PlotService plotService;
	
	@Override
    public void setAsText(String text) {
		
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("------------------------------------------------------------------------------"+text);
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		System.out.println("-----------------------------------------------------");
		Plot c = this.plotService.findById(Integer.valueOf(text));
		System.out.println("-----------------------------------------------------");
		System.out.println("------------------------------------------------------------------------------"+c.getPlotId());
        this.setValue(c);
    }

}
