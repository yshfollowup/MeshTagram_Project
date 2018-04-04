package mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.StatisticDAO;

@Controller
public class StatisticController {
	@Autowired
	StatisticDAO statDAO;
	
	@RequestMapping("/statistics.do")
	public String statisticHandle(ModelMap modelMap) {
		List result = statDAO.findAllData();
		modelMap.addAttribute("statImage", result);
		return "stat_page";
	}
}
