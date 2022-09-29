package com.defers.homeaccounting.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;
import org.springframework.web.servlet.view.freemarker.FreeMarkerViewResolver;

@Configuration
public class HomeAccountingConfig {

//    @Bean
//    public FreeMarkerViewResolver freeMarkerViewResolver() {
//        FreeMarkerViewResolver resolver = new FreeMarkerViewResolver();
//        resolver.setCache(false);
//        resolver.setPrefix("");
//        resolver.setSuffix("ftl");
//
//        return resolver;
//    }
//
//    @Bean
//    public FreeMarkerConfigurer freemarkerConfig() {
//        FreeMarkerConfigurer freeMarkerConfigurer = new FreeMarkerConfigurer();
//        freeMarkerConfigurer.setTemplateLoaderPath("templates/");
//
//        return freeMarkerConfigurer;
//    }

}
