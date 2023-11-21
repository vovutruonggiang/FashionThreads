//package com.ps20611.Admin_DAO;
//
//import java.util.List;
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.query.Param;
//
//import com.ps20611.Admin_Controller.Cart_Entity;
//import com.ps20611.Entity.Customer_Entity;
//
//public interface Cart_DAO extends JpaRepository<Cart_Entity, Integer> {
//
//	@Query("SELECT COUNT(c.id) FROM Cart_Entity c")
//	int countCart();
//
//	@Query("SELECT c.id, c.customer_id, (c.price * c.quanlity), c.status_id FROM Cart_Entity c")
//	List<Object[]> findCartInfo();
//
//	@Query("SELECT c.images, c.color, c.size, c.price, c.quanlity FROM Cart_Entity c WHERE c.customer_id = :customer_id")
//	List<Object[]> selectCartByCustomerID(@Param("customer_id") Customer_Entity customer_id);
//}
