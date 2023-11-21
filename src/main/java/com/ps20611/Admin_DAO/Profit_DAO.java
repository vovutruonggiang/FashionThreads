package com.ps20611.Admin_DAO;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Repository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;

@Repository
public class Profit_DAO {

	@PersistenceContext
	private EntityManager entityManager;

	@SuppressWarnings("unchecked")
	public List<Object[]> getProfit() {
		String hql = "select i.id, i.order_date, i.date_of_payment, p.product_name, p.import_price, "
				+ "di.color, di.size, dp.quantity, di.price, di.quanlity " + "from Product_Entity p "
				+ "inner join p.detailedProducts_Product dp " + "inner join p.detailed_Invoice_Product di "
				+ "inner join di.invoice_id i";
		Query query = entityManager.createQuery(hql);
		return (List<Object[]>) query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> searchByDateRange(Date order_dates) {
		String hql = "select i.id, i.order_date, i.date_of_payment, p.product_name, p.import_price, "
				+ "di.color, di.size, dp.quantity, di.price, di.quanlity " + "from Product_Entity p "
				+ "inner join p.detailedProducts_Product dp " + "inner join p.detailed_Invoice_Product di "
				+ "inner join di.invoice_id i "
				+ "where i.order_date = :order_dates or i.date_of_payment = :order_dates";
		Query query = entityManager.createQuery(hql).setParameter("order_dates", order_dates);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> getProfitLast30Days(LocalDate order_dates) {
		String hql = "select i.id, i.order_date, i.date_of_payment, p.product_name, p.import_price, "
				+ "di.color, di.size, dp.quantity, di.price, di.quanlity " + "from Product_Entity p "
				+ "inner join p.detailedProducts_Product dp " + "inner join p.detailed_Invoice_Product di "
				+ "inner join di.invoice_id i "
				+ "where i.order_date >= :order_dates or i.date_of_payment >= :order_dates";

		Query query = entityManager.createQuery(hql).setParameter("order_dates", java.sql.Date.valueOf(order_dates));

		return (List<Object[]>) query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> getProfitToDay(LocalDate order_dates) {
		String hql = "select i.id, i.order_date, i.date_of_payment, p.product_name, p.import_price, "
				+ "di.color, di.size, dp.quantity, di.price, di.quanlity " + "from Product_Entity p "
				+ "inner join p.detailedProducts_Product dp " + "inner join p.detailed_Invoice_Product di "
				+ "inner join di.invoice_id i "
				+ "where i.order_date = :order_dates or i.date_of_payment = :order_dates";

		Query query = entityManager.createQuery(hql).setParameter("order_dates", java.sql.Date.valueOf(order_dates));

		return (List<Object[]>) query.getResultList();
	}
}
