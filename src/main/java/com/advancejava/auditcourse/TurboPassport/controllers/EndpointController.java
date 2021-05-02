package com.advancejava.auditcourse.TurboPassport.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.advancejava.auditcourse.TurboPassport.entity.Admin;
import com.advancejava.auditcourse.TurboPassport.entity.ApplyForPassportVerification;
import com.advancejava.auditcourse.TurboPassport.entity.User;
import com.advancejava.auditcourse.TurboPassport.repository.ApplyForPassportVerificationRepository;
import com.advancejava.auditcourse.TurboPassport.repository.UserRepository;

@Controller
public class EndpointController {

	@Autowired
    private UserRepository userRepository;
	
	@Autowired
    private ApplyForPassportVerificationRepository applyForPassportVerificationRepository;
	
    @RequestMapping("/home")
    public String loginMessage(){
        return "home";
    }
    
    @RequestMapping("/welcome")
    public String adminHome() {
    	return "admin";
    }
    
    @GetMapping("/admin/login") 
    public String loginForAdmin(Model model) {
    	Admin admin = new Admin();
    	model.addAttribute("adminobj", admin);
    	return "login";
    }
    
    @PostMapping("/admin") 
    public String validateAdmin(@ModelAttribute("adminobj") Admin admin) {
    	if(admin.getUsername().contentEquals("admin") && admin.getPassword().contentEquals("admin")) {
    		return "admin";
    	} else {
    		return "login";
    	}
    }
    
    @GetMapping("/register")
	public String register(Model theModel) {
		
		User user = new User();
		
		theModel.addAttribute("user", user);
		
		return "register";
	}
    
    @PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User user) {
		
		userRepository.save(user);
		
		return "home";
	}
    
    @GetMapping("/applyForPassportVerification")
   	public String reportCyberCrimeComplaint(Model theModel) {
    	ApplyForPassportVerification apply = new ApplyForPassportVerification();
   		theModel.addAttribute("applyForPassport", apply);
   		return "passportVerification";
   	}
       
       @PostMapping("/savePassportVerification")
   	public String savePassportVerification(@ModelAttribute("applyForPassport") ApplyForPassportVerification applyForPassport) {
    	applyForPassportVerificationRepository.save(applyForPassport);
   		return "redirect:/home";
   	}
       
       @GetMapping("/admin/viewPassportApplications")
   	public String listPassportApplications(Model theModel) {
       	List<ApplyForPassportVerification> thePassportApplications = (List<ApplyForPassportVerification>) applyForPassportVerificationRepository.findAll();
   		// add the customers to the model
   		theModel.addAttribute("listPassportApplications", thePassportApplications);
   		return "view_applications";
   	}
       
       @GetMapping("/admin/deleteCyberCrimeComplaints")
   	public String deleteApplications(@RequestParam("recordId") int id) {
   				// delete the customer
    	   applyForPassportVerificationRepository.deleteById(id);
   		return "redirect:/admin/viewPassportApplications";
   	}
       
       @GetMapping("/showStatusForm") 
       public String showStatusForm() {
       	return "statusForm";
       }
        
       @RequestMapping("/admin/getStatus")
       public String getStatus(@RequestParam("statusId") int id, @RequestParam("complaintType") int type, Model model) {
   
       		Optional<ApplyForPassportVerification> object = applyForPassportVerificationRepository.findById(id);
       		if(object.isPresent()) {
       			ApplyForPassportVerification applyForPassportVerification = object.get();
       			model.addAttribute("applyForPassportVerification", applyForPassportVerification);
       		}
       		return "status_applications";
       }
       
      
       @GetMapping("/admin/changeStatustoGreen")
       public String changeStatustoGreen(@RequestParam("changeStatusId") int id, @RequestParam("changeStatusComplaintType") int type) {
       	
       		Optional<ApplyForPassportVerification> object = applyForPassportVerificationRepository.findById(id);
       		if(object.isPresent()) {
       			ApplyForPassportVerification applyForPassportVerification = object.get();
       			applyForPassportVerification.setStatus(1);
       			applyForPassportVerificationRepository.save(applyForPassportVerification);
       		}
       		return "redirect:/admin/viewPassportApplications";
       	}
       
       
       @GetMapping("/admin/changeStatustoRed")
       public String changeStatustoRed(@RequestParam("changeStatusId") int id, @RequestParam("changeStatusComplaintType") int type) {
    	
       		Optional<ApplyForPassportVerification> object = applyForPassportVerificationRepository.findById(id);
       		if(object.isPresent()) {
       			ApplyForPassportVerification applyForPassportVerification = object.get();
       			applyForPassportVerification.setStatus(2);
       			applyForPassportVerificationRepository.save(applyForPassportVerification);
       		}
       		return "redirect:/admin/viewPassportApplications";
       		}
}
