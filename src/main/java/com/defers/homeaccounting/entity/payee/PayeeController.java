package com.defers.homeaccounting.entity.payee;

import com.defers.homeaccounting.entity.payee.dto.PayeeDTO;
import com.defers.homeaccounting.exception.MyEntityNotFoundException;
import com.defers.homeaccounting.utils.ControllerUtils;
import com.defers.homeaccounting.utils.Messages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/payee")
public class PayeeController {

    private PayeeService payeeService;

    @Autowired
    public PayeeController(PayeeService payeeService) {
        this.payeeService = payeeService;
    }

    @GetMapping
    public String listAllPayee(@RequestParam(required = false, defaultValue = "0") int page,
                                  @RequestParam(required = false, defaultValue = "10") int size,
                                  Model model) {

        Page<Payee> pageCategory = payeeService.findAllByPage(page, size);
        List<Payee> entitys = pageCategory.getContent();
        int totalPages = pageCategory.getTotalPages();
        long totalElements = pageCategory.getTotalElements();

        String pathPage = "/payee?page=%s";
        Map<Integer, String> pathPages = ControllerUtils.getPathPages(pathPage, totalPages);

        model.addAttribute("entitys", entitys);
        model.addAttribute("entityName", "Payee");
        model.addAttribute("path", "/payee");
        model.addAttribute("totalElements", totalElements);
        model.addAttribute("currentPage", page);
        model.addAttribute("pathPages", pathPages);

        return "/pages/payee/payee";
    }

    @GetMapping(path = "/{id}/edit")
    public String editEntity(Model model, @PathVariable Long id) {
        PayeeDTO payee = payeeService.findDTOById(id);

        model.addAttribute("payee", payee);

        return "pages/payee/payee-edit";
    }

    @GetMapping(path = "/new")
    public String addEntity(Model model) {
        PayeeDTO payee = new PayeeDTO();
        Map<String, String> categoryOptions = payeeService.findAllMapValues();

        model.addAttribute("payee", payee);

        return "pages/payee/payee-edit";
    }

    @PostMapping
    public String updateEntity(@Valid @ModelAttribute PayeeDTO dto,
                               BindingResult bindingResult) {
        Payee savedPayee = payeeService.saveDTO(dto);

        return Messages.getFormattedMessage("redirect:/payee/%s/edit",
                savedPayee.getId()) ;
    }

    @GetMapping(path = "{id}/delete")
    public String deleteEntity(@PathVariable Long id, RedirectAttributes redirectAttrs) {
        try {
            payeeService.setDelete(id);
        }catch (MyEntityNotFoundException ex) {
            redirectAttrs.addFlashAttribute("error", ex.getMessage());
        }
        return "redirect:/payee";
    }

}
