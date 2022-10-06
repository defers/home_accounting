package com.defers.homeaccounting.entity.currency;

import com.defers.homeaccounting.entity.currency.dto.CurrencyDTO;
import com.defers.homeaccounting.utils.Messages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
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

        return "pages/currency/currency";
    }

    @GetMapping(path = "/{code}/edit")
    public String editCurrency(Model model, @PathVariable String code) {

        Currency currency = currencyService.findByCode(code);
        model.addAttribute("currency", currency);

        return "pages/currency/currency-edit";
    }

    @GetMapping(path = "/new")
    public String addCurrency(Model model) {
        model.addAttribute("currency", new Currency());
        return "pages/currency/currency-edit";
    }

    @PostMapping
    public String updateCurrency(@Valid @ModelAttribute CurrencyDTO currency, BindingResult bindingResult) {

        Currency savedCurrency = currencyService.save(CurrencyDTO.convertToCurrency(currency));

        return Messages.getFormattedMessage("redirect:/currency/%s/edit", savedCurrency.getCode()) ;
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
