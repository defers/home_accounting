package com.defers.homeaccounting.entity.currencyrate;

import com.defers.homeaccounting.entity.currency.CurrencyService;
import com.defers.homeaccounting.entity.currencyrate.dto.CurrencyRateDTO;
import com.defers.homeaccounting.exception.MyEntityNotFoundException;
import com.defers.homeaccounting.utils.ControllerUtils;
import com.defers.homeaccounting.utils.Messages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/currencyrate")
public final class CurrencyRateController {

    private CurrencyRateService currencyRateService;
    private CurrencyService currencyService;

    @Autowired
    public CurrencyRateController(CurrencyRateService currencyRateService,
                                  CurrencyService currencyService) {
        this.currencyRateService = currencyRateService;
        this.currencyService = currencyService;
    }

    @GetMapping
    public String list(@RequestParam(required = false, defaultValue = "0") int page,
                                  @RequestParam(required = false, defaultValue = "6") int size,
                                  Model model) {

        Page<CurrencyRate> pageCurrencyRate = currencyRateService.findAllByPage(page, size);
        List<CurrencyRateDTO> entitys = pageCurrencyRate.getContent()
                .stream()
                .map(currencyRateService::convertToDTO)
                .collect(Collectors.toList());
        int totalPages = pageCurrencyRate.getTotalPages();
        long totalElements = pageCurrencyRate.getTotalElements();

        String pathPage = "/currencyrate?page=%s";
        Map<Integer, String> pathPages = ControllerUtils.getPathPages(pathPage, totalPages);

        model.addAttribute("entitys", entitys);
        model.addAttribute("entityName", "Currency rate");
        model.addAttribute("path", "/currencyrate");
        model.addAttribute("totalElements", totalElements);
        model.addAttribute("currentPage", page);
        model.addAttribute("pathPages", pathPages);

        return "/pages/currencyrate/currencyrate";
    }

    @GetMapping(path = "/{code}/{date}/edit")
    public String edit(Model model,
                       @PathVariable String code,
                       @PathVariable @DateTimeFormat(pattern = "dd.MM.yyyy") LocalDate date
    ) {

        CurrencyRateDTO currencyRate = currencyRateService.findDTOByCodeDate(code, date);
        var currencyOptions = currencyService.findAllMapValues();

        model.addAttribute("currencyrate", currencyRate);
        model.addAttribute("currencyOptions", currencyOptions);

        return "pages/currencyrate/currencyrate-edit";
    }

    @GetMapping(path = "/new")
    public String add(Model model) {

        var currencyOptions = currencyService.findAllMapValues();

        model.addAttribute("currencyrate", new CurrencyRateDTO());
        model.addAttribute("currencyOptions", currencyOptions);

        return "pages/currencyrate/currencyrate-edit";
    }

    @PostMapping
    public String update(@Valid @ModelAttribute CurrencyRateDTO currencyRate,
                                     BindingResult bindingResult) {

        CurrencyRate savedCurrencyRate = currencyRateService.save(currencyRateService.convertToCurrencyRate(currencyRate));

        return Messages.getFormattedMessage("redirect:/currencyrate/") ;
    }

    @GetMapping(path = "{code}/{date}/delete")
    public String delete(@PathVariable String code,
                         RedirectAttributes redirectAttrs,
                         @PathVariable @DateTimeFormat(pattern = "dd.MM.yyyy") LocalDate date
    ) {
        try {
            currencyRateService.deleteByCurrencyRateByCodeDate(code, date);
        }catch (MyEntityNotFoundException ex) {
            redirectAttrs.addFlashAttribute("error", ex.getMessage());
        }
        return "redirect:/currencyrate";
    }



}
