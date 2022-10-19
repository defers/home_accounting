package com.defers.homeaccounting.entity.category;

import com.defers.homeaccounting.entity.category.dto.CategoryDTO;
import com.defers.homeaccounting.enums.TransactionType;
import com.defers.homeaccounting.utils.ControllerUtils;
import com.defers.homeaccounting.utils.Messages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.*;

@RequestMapping("/category")
@Controller
public final class CategoryController {

    private CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @GetMapping
    public String listAllCategory(@RequestParam(required = false, defaultValue = "0") int page,
                                  @RequestParam(required = false, defaultValue = "6") int size,
                                  Model model) {

        Page<Category> pageCategory = categoryService.findAllByPage(page, size);
        List<Category> entitys = pageCategory.getContent();
        int totalPages = pageCategory.getTotalPages();
        long totalElements = pageCategory.getTotalElements();

        String pathPage = "/category?page=%s";
        Map<Integer, String> pathPages = ControllerUtils.getPathPages(pathPage, totalPages);

        model.addAttribute("entitys", entitys);
        model.addAttribute("entityName", "Category");
        model.addAttribute("path", "/category");
        model.addAttribute("totalElements", totalElements);
        model.addAttribute("currentPage", page);
        model.addAttribute("pathPages", pathPages);

        return "/pages/category/category";
    }

    @GetMapping(path = "/{id}/edit")
    public String editEntity(Model model, @PathVariable Long id) {
        CategoryDTO category = categoryService.findDTOById(id);
        Map<String, String> categoryOptions = categoryService.findAllMapValues();

        model.addAttribute("categoryOptions", categoryOptions);
        model.addAttribute("category", category);
        model.addAttribute("transactionTypes", TransactionType.valuesAsList());

        return "pages/category/category-edit";
    }

    @GetMapping(path = "/new")
    public String addEntity(Model model) {
        CategoryDTO category = new CategoryDTO();
        Map<String, String> categoryOptions = categoryService.findAllMapValues();

        model.addAttribute("category", category);
        model.addAttribute("categoryOptions", categoryOptions);
        model.addAttribute("transactionTypes", TransactionType.valuesAsList());

        return "pages/category/category-edit";
    }

    @PostMapping
    public String updateEntity(@Valid @ModelAttribute CategoryDTO dto, BindingResult bindingResult) {
        Category savedCategory = categoryService.saveDTO(dto);

        return Messages.getFormattedMessage("redirect:/category/%s/edit", savedCategory.getId()) ;
    }

    @GetMapping(path = "{id}/delete")
    public String deleteEntity(@PathVariable Long id, RedirectAttributes redirectAttrs) {
        try {
            categoryService.setDelete(id);
        }catch (EntityNotFoundException ex) {
            redirectAttrs.addFlashAttribute("error", ex.getMessage());
        }
        return "redirect:/category";
    }

}
