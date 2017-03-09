/*----------------------------------------------------------------------------*/
/* Source File:   ADMINAPICONFIGURATION.JAVA                                  */
/* Description:   Configures application to allow CORS (API Web App) and other*/
/*                configs.                                                    */
/* Author:        Carlos Adolfo Ortiz Quirós (COQ)                            */
/* Date:          Feb.23/2017                                                 */
/* Last Modified: Mar.09/2017                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2017 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.23/2017 COQ  File created.
 -----------------------------------------------------------------------------*/
package com.csoftz.qms.admin.api.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Configures application to allow CORS (API Web App) and other configs.
 *
 * @since 1.8(JDK), Feb.23/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.1, Mar.09/2017
 */
@Configuration
public class AdminApiConfiguration {
	/**
	 * Enables CORS for service.
	 * 
	 * @return Configuration for CORS.
	 */
	@Bean
	public WebMvcConfigurer corsConfigurer() {
		// Read
		// https://spring.io/blog/2015/06/08/cors-support-in-spring-framework
		// to enable security/filter.
		return new WebMvcConfigurerAdapter() {
			@Override
			public void addCorsMappings(CorsRegistry registry) {
				registry.addMapping("/schema/api/**");
			}
		};
	}
}
