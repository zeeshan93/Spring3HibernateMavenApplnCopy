package net.viralpatel.contact.service;

import java.util.List;

import net.viralpatel.contact.form.Contact;
import net.viralpatel.contact.form.Employee;

public interface EmployeeService {
	public void addEmployee(Employee employee);
	public List<Employee> listEmployee();
	public void removeEmployee(Integer id);
	public Employee getRowById(int id);
	public int updateEmployee(Employee employee);
}
