package com.tifup.bling.tool;


import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider;
import org.springframework.core.type.filter.AnnotationTypeFilter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;
import java.util.Set;

public class RouteList {
    public static void main(String[] args) throws ClassNotFoundException {
        ClassPathScanningCandidateComponentProvider scanner = new ClassPathScanningCandidateComponentProvider(false);

        scanner.addIncludeFilter(new AnnotationTypeFilter(Controller.class));

        Set<BeanDefinition> beanSet = scanner.findCandidateComponents("com.tifup.bling.controller");

        for (BeanDefinition def : beanSet) {
            Class<?> clazz = Class.forName(def.getBeanClassName());
            Arrays.stream(clazz.getDeclaredMethods()).map(m -> m.getAnnotation(RequestMapping.class)).filter(
                    a -> a != null && a.value().length > 0).forEach(
                    a -> Arrays.stream(a.value()).forEach(
                            p -> {
                                System.out.println(p);
                            }
                    ));
        }
    }
}
