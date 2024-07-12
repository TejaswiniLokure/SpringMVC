package springMVC.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@RequestMapping("/home")
	public String home(Model model) {
		System.out.println("hello this is home");
		model.addAttribute("name", "Tejaswini");
		model.addAttribute("id", 1253);
		List<String> friends = new ArrayList<>();
		friends.add("teja");
		friends.add("vijju");
		friends.add("rani");
		friends.add("naga");
		model.addAttribute("f", friends);
		return "index";

	}

	@RequestMapping("/about")
	public String about() {
		System.out.println("hello this is about");
		return "about";

	}

	@RequestMapping("/help")
	public ModelAndView help() {
		System.out.println("this is help container");
		// creating model and view object
		ModelAndView modelAndView = new ModelAndView();
		// setting the data
		modelAndView.addObject("name", "Tejaswini Lokure");
		modelAndView.addObject("rollnumber", 12313);
		LocalDateTime now = LocalDateTime.now();
		modelAndView.addObject("time", now);
		List<Integer> integers=new ArrayList<>();
		integers.add(64);
		integers.add(364);
		integers.add(234);
		integers.add(23);
		modelAndView.addObject("marks", integers);
		
		// setting the view name
		modelAndView.setViewName("help");
		return modelAndView;

	}

}
