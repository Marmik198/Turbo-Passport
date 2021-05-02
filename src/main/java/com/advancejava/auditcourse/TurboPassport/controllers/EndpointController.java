package com.advancejava.auditcourse.TurboPassport.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
   		
   		theModel.addAttribute("cyberCrime", apply);
   		
   		return "Report_c";
   	}
       
       @PostMapping("/savePassportVerification")
   	public String saveCyberCrime(@ModelAttribute("cyberCrime") ApplyForPassportVerification cyberCrime) {
   		
    	applyForPassportVerificationRepository.save(cyberCrime);
   		
   		return "redirect:/home";
   	}
       
}
