package net.viralpatel.contact.dao;

import java.io.Serializable;
import java.util.List;

import net.viralpatel.contact.form.Employee;

import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addEmployee(Employee employee) {
		sessionFactory.getCurrentSession().save(employee);
		
	}
	
	public List<Employee> listEmployee() {
		return sessionFactory.getCurrentSession().createQuery("from Employee").list();
	}

	public void removeEmployee(Integer id) {
		Employee employee = (Employee) sessionFactory.getCurrentSession().load(Employee.class, id);
		if (null != employee) {
			sessionFactory.getCurrentSession().delete(employee);
		}
	}

	public Employee getRowById(int id) {
		//Session session = sessionFactory.openSession();
//		 Employee employee = (Employee) session.load(Employee.class, id); 
		final Employee employee = (Employee) sessionFactory.getCurrentSession().load(Employee.class,id);
		Hibernate.initialize(employee);
		return employee;
	}

	public int updateEmployee(Employee employee) {
//		sessionFactory.getCurrentSession().update(employee);
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		employee.getId();
		session.saveOrUpdate(employee);
//		session.flush();
		tx.commit();
		Serializable id = session.getIdentifier(employee);
		session.close();
		return (Integer) id;
	}
	
}
