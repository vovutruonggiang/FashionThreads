package com.ps20611.Admin_DAO;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Image_Entity;

@Repository
public interface Images_DAO extends JpaRepository<Image_Entity, String> {
	@Query("select i from Image_Entity i where i.product_id.id = ?1")
	List<Image_Entity> listimageproduct(Integer id);

//	@Query("select img from Image_Entity img where img.product_id = ?1")
//	List<Product_Entity> listImg (Integer id);
}
