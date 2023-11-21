//package com.ps20611.Services;
//
//import java.util.List;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import com.ps20611.Entity.Customer_Entity;
// 
//
//import jakarta.persistence.EntityManager;
//import jakarta.persistence.Query;
//
//@Service
//public class Cart_Services {
//
//	@Autowired
//	Cart_DAO cart_DAO;
//
//	@Autowired
//	private EntityManager entityManager;
//
//	public int getCartCount() {
//		return cart_DAO.countCart();
//	}
//
//	@SuppressWarnings("unchecked")
//	public List<String> getTop5ProductNames() {
//		String hql = "SELECT c.product_name FROM Cart_Entity c ORDER BY c.id DESC";
//		Query query = entityManager.createQuery(hql, String.class);
//		query.setMaxResults(5);
//		return query.getResultList();
//	}
//
//	public List<Object[]> getCartInfo() {
//		return cart_DAO.findCartInfo();
//	}
//
//	public List<Object[]> selectCartByCustomerID(Customer_Entity customer_id) {
//		return cart_DAO.selectCartByCustomerID(customer_id);
//	}
//}
