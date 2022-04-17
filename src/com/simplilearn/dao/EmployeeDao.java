package com.simplilearn.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.simplilearn.entity.Employee;
import com.simplilearn.util.HibernateUtil;

public class EmployeeDao {

	public static void addEmployee(Employee e) {
		SessionFactory sf = HibernateUtil.buildSessionFactory();
		Session session = sf.openSession();
		
		Transaction tx = session.beginTransaction();
			session.save(e);
		tx.commit();
		session.close();
	}

	public static List<Employee> listEmployee() {
		List<Employee> employees = null;
		SessionFactory sf = HibernateUtil.buildSessionFactory();
		Session session = sf.openSession();
		employees = session.createQuery("from Employee").list();
		return employees;
	}
}
