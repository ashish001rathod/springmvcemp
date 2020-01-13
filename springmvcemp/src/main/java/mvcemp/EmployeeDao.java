package mvcemp;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDao {
	@Autowired
	SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	public void addEmployee(Employee emp){
		Session session =sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.save(emp);
		tx.commit();
		session.close();
	}
	public List<Employee> getEmployees(){
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Employee> employeeList = session.createQuery("from Employee").list();
		return employeeList;
	}	
	public Employee getEmployees(int empcode) {
		Session session =sessionFactory.openSession();
		Employee emp = (Employee) session.get(Employee.class, empcode);
		return emp;
	}
	public void updateEmployees(Employee emp){
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.update(emp);
		tx.commit();
		session.close();
	}
	public void deleteEmployee(Employee emp){
		Session session=sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.delete(emp);
		tx.commit();
		session.close();
	}
}
