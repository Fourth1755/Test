package syngenta.der.controller.mvc;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import syngenta.der.entities.Country;
import syngenta.der.entities.Plot;
import syngenta.der.entities.Position;
import syngenta.der.entities.ShareConstant;
import syngenta.der.entities.Trial;
import syngenta.der.entities.Useraccount;
import syngenta.der.entities.Usertrial;
import syngenta.der.entities.UsertrialId;
import syngenta.der.entities.bind.PlotBinder;
import syngenta.der.entities.bind.UserAccountBinder;
import syngenta.der.service.PlotService;
import syngenta.der.service.TrialService;
import syngenta.der.service.UserAccountService;
import syngenta.der.service.UserTrailService;

@Controller
public class SetupProjectController {

	@Autowired
	private TrialService trialService;

	@Autowired
	private UserAccountBinder userAccountBinder;

	@Autowired
	private UserTrailService userTrailService;
	@Autowired
	private PlotService plotService;

	@Autowired
	private PlotBinder plotBlinder;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setAutoGrowCollectionLimit(1024);
		binder.registerCustomEditor(Useraccount.class, this.userAccountBinder);
		binder.registerCustomEditor(Plot.class, this.plotBlinder);
		// binder.registerCustomEditor(Country.class, this.countryBinder);

	}

	@RequestMapping(value = { "/setup/", "/setup/index" }, method = RequestMethod.GET)
	public String setupIndex(Principal priciple, Model model) {

		// System.out.println("----------"+priciple.getName());
		List<?> joinList = trialService.findTrailsByUserName(priciple.getName());
		List<Trial> trailList = new ArrayList<Trial>();
		for (int i = 0; i < joinList.size(); i++) {
			Object[] obj = (Object[]) joinList.get(i);
			Trial t = (Trial) obj[0];
			trailList.add(t);
		}

		model.addAttribute("trialList", trailList);
		// System.out.println(">>>>>>>>>>"+trialService.findTrailsByUserId(1));
		return "setup/setupIndex";
	}

	@RequestMapping(value = "/setup/setupDetail/{id}", method = RequestMethod.GET)
	public String setupDetail(Model model, @PathVariable("id") String id) {

		Trial trial = trialService.findById(id);

		List<?> pList = trialService.findUserTrialByRole(id, "Plant Pathologist");

		List<Usertrial> plantsList = new ArrayList<Usertrial>();
		for (int i = 0; i < pList.size(); i++) {
			Object[] obj = (Object[]) pList.get(i);
			plantsList.add((Usertrial) obj[1]);

		}

		List<?> tList = trialService.findUserTrialByRole(id, "Trialing Team");

		List<Usertrial> teamsList = new ArrayList<Usertrial>();
		for (int i = 0; i < tList.size(); i++) {
			Object[] obj = (Object[]) tList.get(i);
			teamsList.add((Usertrial) obj[1]);

		}

		model.addAttribute("trial", trial);
		model.addAttribute("plantsList", plantsList);
		model.addAttribute("teamsList", teamsList);

		model.addAttribute("trialStatusList", ShareConstant.trialStatusList);
		model.addAttribute("trialActiveList", ShareConstant.trialActiveList);

		model.addAttribute("plotStatusList", ShareConstant.plotStatusList);

		return "setup/setupDetail";
	}

	@RequestMapping(value = "setup/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("trial") Trial trial) {

		Trial trialModel = trialService.findById(trial.getTrialId());

		ArrayList<Plot> plots = new ArrayList<Plot>();
		
		for (Plot viewPlot : trial.getPlots()) {

			Plot plotModel = plotService.findById(viewPlot.getPlotId());
			
			plotModel.setPlotStatus(viewPlot.getPlotStatus());
			
			plotModel.setPlotActive(viewPlot.getPlotActive() == null ? "Inactive" : "Active");

			plots.add(plotModel);

		}
		trialModel.setPlots(plots);
		trialService.save(trialModel);
		// }
		return "redirect:/setup/index";
	}

}
