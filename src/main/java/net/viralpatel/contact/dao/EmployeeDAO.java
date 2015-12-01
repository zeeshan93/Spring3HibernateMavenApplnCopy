package net.viralpatel.contact.dao;

import java.util.List;

import net.viralpatel.contact.form.Employee;

public interface EmployeeDAO {
	public void addEmployee(Employee employee);
	public List<Employee> listEmployee();
	public void removeEmployee(Integer id);
	public Employee getRowById(int id); 
	public int updateEmployee(Employee employee);
}
