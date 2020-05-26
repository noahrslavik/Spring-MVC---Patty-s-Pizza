package co.grandcirus.springlab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PizzaController {
	
	@RequestMapping("/")
	public String mainPage() {
		return "index";		
	}
	
	@RequestMapping("/review")
	public String reviewPage() {
		
		
		
		
		
		return "review";		
	}
	
	@RequestMapping("/custompizza")
	public String customPage() {
		return "custompizza";		
	}
	
	@RequestMapping("/specialtypizza")
	public String specialtyPage(
			@RequestParam(value="sp", required=false) String pizza,
			Model model) { 
		
		String pizzaType = "";
		double price = 0.0;
		
		if (pizza.equals("sp1")) {
			System.out.println("sp1");
			pizzaType = "Spicy Chicken Fresco";
			price = 17.99;
		} else if (pizza.equals("sp2")) {
			System.out.println("sp2");
			pizzaType = "Patty's Signature";
			price = 19.99;
		} else if (pizza.equals("sp3")) {
			System.out.println("sp3");
			pizzaType = "The Meat Supreme";
			price = 21.99;
		} else {
			System.out.println("Looks like that isn't on our menu!");
			System.out.println(pizza);
		}
				
		model.addAttribute("pizzaType", pizzaType);
		model.addAttribute("price", price);
			
		return "specialtypizza";		
	}
	
	@RequestMapping("/confirmation")
	public String confirmationPage(
			@RequestParam(value="size") String size,
			@RequestParam(value="toppings", required=false) int toppings,
			@RequestParam(value="glutenfree", required=false) String glutenFree,
			@RequestParam(value="specialrequests", required=false) String specialRequests,
			Model model) {
		
		double sizePrice = 0.0;
		double toppingPrice = 0.0;
		double glutenPrice = 0.0;
		double totalPrice = 0.0;
		
		if (size.equals("small")) {
			sizePrice = 7.0;
			toppingPrice = toppings * .5;
		} else if (size.equals("medium")) {
			sizePrice = 10;
			toppingPrice = toppings * 1;
		} else if (size.equals("large")) {
			sizePrice = 12.0;
			toppingPrice = toppings * 1.25;
		} else {
			System.out.println("something's not right");
			System.out.println(size);
			System.out.println(toppings);
			System.out.println(glutenFree);
			System.out.println(specialRequests);
		}
		
		if (glutenFree.equals("glutenfree")) {
			glutenPrice = 2.0;
		} else {
			glutenPrice = 0.0;
		}
		
		totalPrice = sizePrice + toppingPrice + glutenPrice;
		
		model.addAttribute("size", size);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("toppings", toppings);
		model.addAttribute("glutenFree", glutenFree);
		model.addAttribute("specialRequests", specialRequests);
		
		return "confirmation";		
	}
	
	
	@RequestMapping("/reviewconfirmation")
	public String confirmationReview(
			@RequestParam(value="name", required=false ) String name,
			@RequestParam(value="comment", required=false) String comment,
			Model model) {
	
		
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		return "reviewconfirmation";	
	}
	}
