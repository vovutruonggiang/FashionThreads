package com.ps20611.Admin_DAO;

import java.util.List;
import org.springframework.stereotype.Repository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;

@Repository
public class Inventory_Product_Statistics_DAO {

	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	public List<Object[]> getCustomProductDetails() {
		String queryStr = "select c.name_category_menu, c1.name_category_product_type, c2.name_category_product, "
				+ "p.product_name, b.brand_name, co.color_name, s.size_name, d.quantity "
				+ "from Category_Menu_Entity c "
				+ "inner join Category_Product_Type_Entity c1 on c.id = c1.category_menu.id "
				+ "inner join Category_Product_Entity c2 on c1.id = c2.category_product_type.id "
				+ "inner join Product_Entity p on c2.id = p.category_product.id "
				+ "inner join Brand_Entity b on b.id = p.brand_id.id "
				+ "inner join Detailed_Products_Entity d on d.product_id.id = p.id "
				+ "inner join Color_Entity co on co.id = d.color_id.id "
				+ "inner join Size_Entity s on s.id = d.size_id.id";
		Query query = entityManager.createQuery(queryStr);
		return query.getResultList();
	}

	public Long getProductCountWithQuantityGreaterThanZero() {
		String hql = "SELECT COUNT(*) FROM Category_Menu_Entity c "
				+ "INNER JOIN Category_Product_Type_Entity c1 ON c.id = c1.category_menu.id "
				+ "INNER JOIN Category_Product_Entity c2 ON c1.id = c2.category_product_type.id "
				+ "INNER JOIN Product_Entity p ON c2.id = p.category_product.id "
				+ "INNER JOIN Detailed_Products_Entity d ON d.product_id.id = p.id " + "WHERE d.quantity > 0";

		Query query = entityManager.createQuery(hql);
		return (Long) query.getSingleResult();
	}

	public Long getProductCountWithQuantity() {
		String hql = "SELECT COUNT(*) FROM Category_Menu_Entity c "
				+ "INNER JOIN Category_Product_Type_Entity c1 ON c.id = c1.category_menu.id "
				+ "INNER JOIN Category_Product_Entity c2 ON c1.id = c2.category_product_type.id "
				+ "INNER JOIN Product_Entity p ON c2.id = p.category_product.id "
				+ "INNER JOIN Detailed_Products_Entity d ON d.product_id.id = p.id";

		Query query = entityManager.createQuery(hql);
		return (Long) query.getSingleResult();
	}
}
