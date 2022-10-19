package com.defers.homeaccounting.entity.account;

import com.defers.homeaccounting.entity.account.dto.AccountDTO;
import com.defers.homeaccounting.entity.currency.CurrencyService;
import com.defers.homeaccounting.utils.Messages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.*;

@RequestMapping(path = "/account")
@Controller
public final class AccountController {

    private final AccountService accountService;
    private final CurrencyService currencyService;

    @Autowired
    public AccountController(AccountService accountService, CurrencyService currencyService) {
        this.accountService = accountService;
        this.currencyService = currencyService;
    }

    @GetMapping
    public String listAllEntity(Model model) {
        List<AccountDTO> entitys = accountService.findAllDTO();
        model.addAttribute("entityName", "Account");
        model.addAttribute("path", "/account");
        model.addAttribute("entitys", entitys);

        return "/pages/account/account";
    }

    @GetMapping(path = "/{id}/edit")
    public String editEntity(Model model, @PathVariable Long id) {
        AccountDTO account = accountService.findDTOById(id);
        Map<String, String> currencyOptions = currencyService.findAllMapValues();

        model.addAttribute("currencyOptions", currencyOptions);
        model.addAttribute("account", account);

        return "pages/account/account-edit";
    }

    @GetMapping(path = "/new")
    public String addEntity(Model model) {
        AccountDTO account = new AccountDTO();
        Map<String, String> currencyOptions = currencyService.findAllMapValues();

        model.addAttribute("account", account);
        model.addAttribute("currencyOptions", currencyOptions);

        return "pages/account/account-edit";
    }

    @PostMapping
    public String updateEntity(@Valid @ModelAttribute AccountDTO account, BindingResult bindingResult) {
        Account savedAccount = accountService.saveDTO(account);

        return Messages.getFormattedMessage("redirect:/account/%s/edit", savedAccount.getId()) ;
    }

    @GetMapping(path = "{id}/delete")
    public String deleteEntity(Long id, RedirectAttributes redirectAttrs) {
        try {
            accountService.setDelete(id);
        }catch (EntityNotFoundException ex) {
            redirectAttrs.addFlashAttribute("error", ex.getMessage());
        }
        return "redirect:/account";
    }
}
