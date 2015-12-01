package net.viralpatel.contact.controller;

import java.util.Map;

import net.viralpatel.contact.form.Contact;
import net.viralpatel.contact.form.Employee;
import net.viralpatel.contact.service.ContactService;
import net.viralpatel.contact.service.EmployeeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {

	@Autowired
	private ContactService contactService;
	@Autowired
	private EmployeeService employeeService;

//	@RequestMapping("/index")
//	public String listContacts(Map<String, Object> map) {
//		
//		map.put("contact", new Contact());
//		map.put("contactList", contactService.listContact());
//		return "contact1";
//	}
	
	@RequestMapping("/index")
	public ModelAndView listEmployee(){
		ModelAndView model = new ModelAndView("contact1");
		model.addObject("employeeList", employeeService.listEmployee());
		return model;
	}	
	
	//written by me
	@RequestMapping("/insert")
	public ModelAndView addDetail(){
		ModelAndView model = new ModelAndView("insert");
		model.addObject("employee", new Employee());
		return model;
	}

//	@RequestMapping(value = "/add", method = RequestMethod.POST)
//	public String addContact(@ModelAttribute("contact") Contact contact, BindingResult result) {
//				
//		contactService.addContact(contact);
//		
//		return "redirect:/index";
//	}
	
	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public String addContact1(@ModelAttribute("employee") Employee employee, BindingResult result) {
				
		employeeService.addEmployee(employee);
		
		return "redirect:/index";
	}
	
	@RequestMapping("/delete/{employeeId}")
	public String deleteContact(@PathVariable("employeeId") Integer employeeId) {

		employeeService.removeEmployee(employeeId);

		return "redirect:/index";
	}
	
	@RequestMapping("/update/{employeeId}")
	public ModelAndView updateDetail(@PathVariable("employeeId") Integer id){
		ModelAndView model = new ModelAndView("update");
		
		
		Employee employee = employeeService.getRowById(id);
//		String name = employee.getName();
//		System.out.println(name);
		System.out.println(employee.getName());
//		model.addObject("employeename",employee.getName());
//		model.addObject("employee",employeeService.getRowById(id));
		model.addObject("employee", new Employee());
		model.addObject("msg", id);
		model.addObject("employeeid", employee.getId());
		model.addObject("employeename",employee.getName());
		model.addObject("employeeaddress",employee.getAddress());
		model.addObject("employeemail",employee.getEmail());
		model.addObject("employeephone",employee.getPhone());

//		model.addObject("employee", new Employee());
		return model;
	}
	
//	@RequestMapping("/updateEmployee")  
//	 public ModelAndView updateUser(@ModelAttribute Employee employee) {  
//		employeeService.updateEmployee(employee); 
//		return new ModelAndView("redirect:/index");  
//	 }  
	
	@RequestMapping(value = "/update/updateEmployee", method = RequestMethod.POST)
	public String updateEmployee(@ModelAttribute Employee employee) {

		employeeService.updateEmployee(employee);

		return "redirect:/index";
	}
}
