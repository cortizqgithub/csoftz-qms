/*----------------------------------------------------------------------------*/
/* Source File:   ENTERPRISECONTROLLER.JAVA                                   */
/* Description:   Controller for Enterprise Domain object API                 */
/* Author:        Carlos Adolfo Ortiz Quirós (COQ)                            */
/* Date:          Mar.10/2017                                                 */
/* Last Modified: Mar.11/2017                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2017 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Mar.09/2017 COQ  File created.
 -----------------------------------------------------------------------------*/
package com.csoftz.qms.admin.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.csoftz.qms.admin.api.domain.Enterprise;
import com.csoftz.qms.admin.api.service.IEnterpriseService;

/**
 * Controller for Enterprise Domain object API
 * 
 * @since 1.8 (JDK), Mar.09/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.2, Mar.11/2017
 *
 */
@RestController
@RequestMapping("/api/v1/enterprises")
public class EnterpriseController {

	/**
	 * EnterpriseService injected
	 */
	private final IEnterpriseService enterpriseService;

	/**
	 * IoC constructor based.
	 * 
	 * @param enterpriseService
	 *            Service for Enterprise operations.
	 */
	public EnterpriseController(IEnterpriseService enterpriseService) {
		this.enterpriseService = enterpriseService;
	}

	/**
	 * Retrieves an Enterprise
	 * 
	 * @param id
	 *            The id to search for.
	 * @return The contents of the Enterprise object. If object is not found
	 *         then an empty object is returned.
	 */
	@GetMapping(path = "/{id}")
	public Enterprise getById(@PathVariable("id") Long id) {
		Optional<Enterprise> data = enterpriseService.findOne(id);
		if (data.isPresent()) {
			return data.get();
		}
		return new Enterprise();
	}

	/**
	 * Gets all existing Enterprise objects
	 * 
	 * @return List with Enterprise objects, empty if no records found.
	 */
	@GetMapping(path = { "/all", "/find/all" })
	public List<Enterprise> findAll() {
		List<Enterprise> entList = enterpriseService.findAll();
		return entList;
	}

	/** Stores an enterprise object to repository.
	 * @param enterprise Data to save.
	 * @return A response entity with created status for object.
	 */
	@PostMapping
	public ResponseEntity<Enterprise> save(@RequestBody Enterprise enterprise) {
		Enterprise savedEnterprise = enterpriseService.save(enterprise);
		return new ResponseEntity<>(savedEnterprise, HttpStatus.CREATED);
	}
	
	/** Removes the Enteprise object from repository.
	 * @param id Identification for object to remove
	 * @return A response Entity with string DELETED and accepted.
	 */
	@DeleteMapping(path = "/{id}")
	public ResponseEntity<String> delete(@PathVariable("id") Long  id) {
        enterpriseService.delete(id);
        return new ResponseEntity<>("Deleted", HttpStatus.ACCEPTED);
    }
}
