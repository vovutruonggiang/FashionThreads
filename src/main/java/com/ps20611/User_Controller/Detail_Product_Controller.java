package com.ps20611.User_Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Color_DAO;
import com.ps20611.Admin_DAO.Images_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Admin_DAO.Product_Detail_DAO;
import com.ps20611.Admin_DAO.Size_DAO;
import com.ps20611.Entity.Image_Entity;
import com.ps20611.Entity.Product_Entity;

@Controller
public class Detail_Product_Controller {

	@Autowired
	Color_DAO colorDao;
	@Autowired
	Size_DAO sizeDao;

	@Autowired
	Product_Detail_DAO proDetailDao;

	@Autowired
	Product_DAO proDao;

	@Autowired
	Images_DAO dao_image;

	@RequestMapping("/product/detail/{id}")
	public String viewDetail(Model model, @PathVariable("id") Integer id) {
		model.addAttribute("detail", proDao.findById(id).get());

		List<Object[]> findsize = sizeDao.findkichthuoc(id);
		List<String> listsize = new ArrayList<>();
		findsize.forEach(array -> {
			for (Object ob : array) {
				String kt = ob.toString();
				listsize.add(kt);
			}
		});
		model.addAttribute("size", listsize);
		
		List<Object[]> findcolor = colorDao.findmau(id);
		List<String> listcolor = new ArrayList<>();
		findcolor.forEach(array -> {
			for (Object ob : array) {
				String kt = ob.toString();
				listcolor.add(kt);
			}
		});
		model.addAttribute("color", listcolor);

		List<Product_Entity> listsp = proDao.findAll();
		model.addAttribute("listsp", listsp);
		List<Product_Entity> listsp1 = proDao.listproduct(id);
		model.addAttribute("listsp", listsp1);
		List<Image_Entity> listsp2 = dao_image.listimageproduct(id);
		model.addAttribute("listsp2", listsp2);
		return "user/jsp/detail_product";
	}
	
	@ModelAttribute("list_p_tuongtu")
	public List<Product_Entity> listtt() {
		return proDao.findAll();
	}
}
