package com.defers.homeaccounting.entity.currencyrate;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import com.defers.homeaccounting.entity.baseentity.IEntityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/currencyrate")
public final class CurrencyRateController {

    private CurrencyRateService currencyRateService;

    @Autowired
    public CurrencyRateController(CurrencyRateService currencyRateService) {
        this.currencyRateService = currencyRateService;
    }


}
