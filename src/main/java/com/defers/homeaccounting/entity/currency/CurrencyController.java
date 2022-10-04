package com.defers.homeaccounting.entity.currency;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@Controller
@RequestMapping(path = "/currency")
public class CurrencyController {

    @Autowired
    CurrencyService currencyService;

    @GetMapping
    public String listCurrency(Model model) {

        List<Currency> entitys = currencyService.findAll();
        model.addAttribute("entityName", "Currency");
        model.addAttribute("path", "/currency");
        model.addAttribute("entitys", entitys);

        return "pages/currency";
    }

    @GetMapping(path = "{code}/delete")
    public String deleteCurrency(@PathVariable String code, RedirectAttributes redirectAttrs) {
        try {
            currencyService.delete(code);
        }catch (EntityNotFoundException ex) {
            redirectAttrs.addFlashAttribute("error", ex.getMessage());
        }
        return "redirect:/currency";
    }

}
