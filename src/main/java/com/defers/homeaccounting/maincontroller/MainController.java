package com.defers.homeaccounting.maincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @GetMapping("/test")
    public String mainPage(Model model) {
        model.addAttribute("name", "Alex");
        return "main_page";
    }

}
