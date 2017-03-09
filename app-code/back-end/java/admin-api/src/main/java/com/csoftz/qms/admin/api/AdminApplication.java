/*----------------------------------------------------------------------------*/
/* Source File:   ADMINAPPLICATION.JAVA                                       */
/* Description:   QMS Microservice API                                        */
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
package com.csoftz.qms.admin.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * QMS Microservice API 
 * 
 * @since 1.8 (JDK), Feb.23/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.1, Feb.23/2017
 *
 */
@SpringBootApplication
public class AdminApplication {

	/**
	 * Entry point for executing the Spring Boot App.
	 * 
	 * @param args Command line or other parameters.
	 */
	public static void main(String[] args) {
		SpringApplication.run(AdminApplication.class, args);
	}
}
