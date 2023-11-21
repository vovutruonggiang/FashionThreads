package com.ps20611.Admin_Statistical;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.ps20611.Admin_DAO.Evaluate_DAO;
import com.ps20611.Entity.Evaluate_Entity;
import com.ps20611.Services.Evaluate_Services;

@Controller
@RequestMapping("/views/")
public class Evaluate_Controller {

	@Autowired
	Evaluate_DAO evaluate_DAO;

	@Autowired
	Evaluate_Services evaluate_Services;

	@RequestMapping("statistical/evaluate")
	public String evaluate(Model model) {
		return "admin/statistical/evaluate";
	}

	@ModelAttribute("list_Evaluate")
	public List<Evaluate_Entity> list_Account() {
		return evaluate_DAO.findAll();
	}

	@GetMapping("/statistical/evaluate/search_modificationDate")
	public String getEvaluatesByModificationDate(
			@RequestParam("modificationDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date modificationDate,
			Model model) {
		List<Evaluate_Entity> evaluates = evaluate_Services.getEvaluatesByModificationDate(modificationDate);
		model.addAttribute("list_Evaluate", evaluates);
		return "admin/statistical/evaluate";
	}

	@GetMapping("/statistical/evaluate/search_assessmentDate")
	public String getEvaluatesByAssessmentDate(
			@RequestParam("assessmentDate") @DateTimeFormat(pattern = "yyyy-MM-dd") Date assessmentDate, Model model) {
		List<Evaluate_Entity> evaluates = evaluate_Services.getEvaluatesByAssessmentDate(assessmentDate);
		model.addAttribute("list_Evaluate", evaluates);
		return "admin/statistical/evaluate";
	}
}
