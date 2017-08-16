package egovframework.example.welcomeWeb.web;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.welcomeWeb.service.WelcomeWebService;

@Controller
public class WelcomeWebController {

	@Resource(name = "welcomeWebService")
	private WelcomeWebService welcomeWebService;
	
	@SuppressWarnings({ "rawtypes" })
	@RequestMapping(value = "/welcomeWeb.do")
	public String welcomeWeb(HttpServletRequest request, ModelMap model) throws Exception {
		
		List<Map> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList(),
				  pieChartList   = welcomeWebService.selectPieChartList();
		
		model.addAttribute("welcomeWebList", 	welcomeWebList);
		model.addAttribute("pieChartList", 		pieChartList);
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
	
	@RequestMapping(value = "eightTest.do")
	public String checkBoxSend(HttpServletRequest request, ModelMap model) throws Exception { 
		
		List<Map> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList(),
				  pieChartList 	 = welcomeWebService.selectPieChartList();
		
		Enumeration<String> attr = request.getParameterNames();
		
		String attrName			 = "";
		
		model.addAttribute("welcomeWebList", 	welcomeWebList);
		model.addAttribute("pieChartList", 		pieChartList);
		
		while(attr.hasMoreElements())
		{
			attrName = attr.nextElement();
			
			if(attrName.equals("hanq")) 
			{
				String[] columnCheckArry = request.getParameterValues("hanq");
				
				model.addAttribute("columnCheckArry", columnCheckArry);
			} 
			else if(attrName.equals("usernameValue")) 
			{
				String[] nameCheckArry = request.getParameterValues("usernameValue");
			
				model.addAttribute("nameCheckArry", nameCheckArry);
			}
			else if(attrName.equals("countryValue"))
			{
				String[] countryCheckArry = request.getParameterValues("countryValue");
				
				model.addAttribute("countryCheckArry", countryCheckArry);
			}
			else if(attrName.equals("ageValue"))
			{
				String[] ageCheckArry = request.getParameterValues("ageValue");
				
				model.addAttribute("ageCheckArry", ageCheckArry);
			}
		}
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
}
