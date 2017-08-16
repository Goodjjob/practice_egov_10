package egovframework.example.main.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	@RequestMapping(value = "main.do")
	public String mainInit(HttpServletRequest request, ModelMap map) 
	{		
		return "main/main.tiles";
	}

}
