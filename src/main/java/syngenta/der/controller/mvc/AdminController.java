package syngenta.der.controller.mvc;
import java.util.ArrayList;
import java.security.Principal;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import syngenta.der.entities.Country;
import syngenta.der.entities.Position;
import syngenta.der.entities.Useraccount;
import syngenta.der.entities.bind.CountryBinder;
import syngenta.der.entities.bind.PositionBinder;
import syngenta.der.repository.CountryDAO;
import syngenta.der.repository.UserAccountDAO;
import syngenta.der.service.CountryService;
import syngenta.der.service.PositionService;
import syngenta.der.service.UserAccountService;

@Controller
public class AdminController {

	@Autowired
	UserAccountService userAccountService;

	@Autowired
	private CountryService countryService;

	@Autowired
	private PositionService positionService;

	private @Autowired PositionBinder positionBinder;

	private @Autowired CountryBinder countryBinder;

	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	
		binder.registerCustomEditor(Position.class, this.positionBinder);
		binder.registerCustomEditor(Country.class, this.countryBinder);
		
	
	}
	
	@RequestMapping(value = "/admin/countryAdminIndex", method = RequestMethod.GET)
	public String countryAdminIndex(Model model, Principal principal) {
		//show country Admin list
		
		
		return "admin/countryAdminIndex";
	}
	
	@RequestMapping(value = "/admin/countryAdminIndexDelete", method = RequestMethod.GET)
	public String countryAdminIndexDelete(Model model, Principal principal) {
		// delete user from country admin

		
		return "redirect:/admin/countryAdminIndex";
	}
	
	@RequestMapping(value = "/admin/countryAdminAdd", method = RequestMethod.GET)
	public String countryAdminAdd(Model model, Principal principal) {
		//show 
		
		return "admin/countryAdminAdd";
	}
	
	@RequestMapping(value = "/admin/countryAdminAddSearch", method = RequestMethod.GET)
	public String countryAdminAddSearch(Model model, Principal principal) {
		//search
		
		return "redirect:/admin/countryAdminAdd";
	}
	
	@RequestMapping(value = "/admin/countryAdminAddAdmin", method = RequestMethod.GET)
	public String countryAdminAddAdmin(Model model, Principal principal) {
		//add admin
		
		return "redirect:/admin/countryAdminIndex";
	}
	
	@RequestMapping(value = "/admin/deleteFormCountry/{id}", method = RequestMethod.GET)
	public String deleteFormCountry(@PathVariable("id") int id) {
		countryService.delete(id);
		return "redirect:/admin/viewCountry";
	}
	
	@RequestMapping(value = "/admin/updateFormCountry/{id}", method = RequestMethod.GET)
	public String adminUpdateFormCountry(@PathVariable("id") int id,Model model,@ModelAttribute("country") Country country) {
		Country ctry=countryService.findById(id);
		model.addAttribute("country",ctry);
		
		return "admin/countryUpdate";
	}
	@RequestMapping(value = "/admin/updateCountry", method = RequestMethod.POST)
	public String adminUpdateCountry(@ModelAttribute("country") Country country) {
		Country c=countryService.findById(country.getCountryId());
		c.setCountryName(country.getCountryName());
		countryService.saveOrUpdate(c);
		return "redirect:/admin/viewCountry";
	}
	
	@RequestMapping(value = "/admin/addCountry", method = RequestMethod.POST)
	public String adminAddCountry(Model model, Principal principal,@ModelAttribute("country")Country country) {
		System.out.println(country.getCountryName());
		//List<Country> cList=countryService.getAllCountry();
		//model.addAttribute("cList",cList);
		countryService.saveOrUpdate(country);
		return "redirect:/admin/viewCountry";
	}
	
	@RequestMapping(value = "/admin/viewCountry", method = RequestMethod.GET)
	public String adminViewCountry(Model model, Principal principal,@ModelAttribute("country")Country country) {
		
		List<Country> cList=countryService.getAllCountry();
		model.addAttribute("cList",cList);
		return "admin/countryView";
	}
	
	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public String adminIndex(Model model, Principal principal) {
		//ต้องการ List<Useraccount> เอาเฉพาะ active,inactive ไม่เอาที่รอ
		
		List<Useraccount> userList = userAccountService.getAllUsers();
		//ต้องการจำนวน Waiting ใส่ไว้ใน i
		int i=4;
		
		//ส่วนของการดึงข้อมูล
		model.addAttribute("numWaiting",i);
		model.addAttribute("userList", userList);

		return "admin/adminIndex";
	}

	@RequestMapping(value = "/admin/editProfile/{id}", method = RequestMethod.GET)
	public String editProfile(Model model, @PathVariable("id") int id) {

		Useraccount user = userAccountService.findById(id);
		
		//ต้องการจำนวน Waiting ใส่ไว้ใน i
		int i=4;
				
		//ส่วนของการดึงข้อมูล
		model.addAttribute("numWaiting",i);
		
		
		//model.addAttribute("status",user.getUserStatus());
		
		model.addAttribute("user", user);
		
		model.addAttribute("countryList", countryService.getAllCountry());

		model.addAttribute("positionList", positionService.getAllPosition());

		return "/admin/editProfile";
	}

	@RequestMapping(value = "admin/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("user") Useraccount user) {
		//save user บันทึก 5 อย่าง country,position,userStatus,password
		Useraccount useraccount = userAccountService.findById(user.getUserId());
		
		//ต้องเช็คด้วยว่าค่ามันเข้าไหม
		//useraccount.setFirstName(user.getFirstName());
		useraccount.setPosition(user.getPosition());
		
		userAccountService.saveOrUpdate(useraccount);

		return "redirect:/admin/index";
	}
	
	@RequestMapping(value = "/admin/approveUser", method = RequestMethod.GET)
	public String approveUser(Model model, Principal principal) {
		//User : waiting status
		List<Useraccount> userList = userAccountService.getAllUserByStatus("Waiting");

		model.addAttribute("userList", userList);

		return "/admin/approveUser";
	}

	@RequestMapping(value = "/admin/approveUserApprove", method = RequestMethod.GET)
	public String approveUserApp(Model model, Principal principal, @RequestParam(name = "id") String id,
		@RequestParam(name = "status") String status) {

		Useraccount u = userAccountService.findById(Integer.parseInt(id));
		if (status.equals("Active")) {
			u.setUserStatus(status);
			userAccountService.saveOrUpdate(u);
		} else {
			userAccountService.delete(u);
		}
		
		return "redirect:/admin/approveUser";
	}
}
