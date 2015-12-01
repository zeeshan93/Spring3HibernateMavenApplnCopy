package net.viralpatel.contact.service;

import java.util.List;

import net.viralpatel.contact.dao.EmployeeDAO;
import net.viralpatel.contact.form.Employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	EmployeeDAO employeeDAO;
	
	
	public void addEmployee(Employee employee) {
		employeeDAO.addEmployee(employee);

	}

	public List<Employee> listEmployee() {
		return employeeDAO.listEmployee();
	}

	public void removeEmployee(Integer id) {
		employeeDAO.removeEmployee(id);

	}
	
	public Employee getRowById(int id) {
		return employeeDAO.getRowById(id);
	}

	public int updateEmployee(Employee employee) {
		return employeeDAO.updateEmployee(employee);
	}

}
