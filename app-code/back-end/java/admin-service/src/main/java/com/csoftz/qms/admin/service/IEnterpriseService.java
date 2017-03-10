/*----------------------------------------------------------------------------*/
/* Source File:   IENTERPRISESERVICE.JAVA                                     */
/* Description:   Domain object for Enterprise information interface          */
/* Author:        Carlos Adolfo Ortiz Quirós (COQ)                            */
/* Date:          Mar.09/2017                                                 */
/* Last Modified: Mar.09/2017                                                 */
/* Version:       1.1                                                         */
/* Copyright (c), 2017 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Mar.09/2017 COQ  File created.
 -----------------------------------------------------------------------------*/
package com.csoftz.qms.admin.service;

import java.util.List;
import java.util.Optional;

import com.csoftz.qms.admin.domain.Enterprise;

/**
 *  Domain object for Enterprise information interface 
 * 
 * @since 1.8 (JDK), Mar.09/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.1, Mar.09/2017
 *
 */
public interface IEnterpriseService {
	
	/** Stores a new record for  'Enterprise' 
	 * @param enterprise A reference to enterprise object
	 * @return The same object received
	 */
	Enterprise save(Enterprise enterprise);

	/** Updates a record for 'Enterprise'
	 * @param enterprise A reference to enterprise object
	 * @return The same object received.
	 */
	Enterprise update(Enterprise enterprise);

	/** Given the 'id' tries to find if record exists.
	 * @param id Identification of record to find.
	 * @return Optional indicating if found or not.
	 */
	Optional<Enterprise> findOne(long id);
	
	/** Retrieves all existing enterprises.
	 * @return
	 */
	List<Enterprise> findAll();

	
	/** Removes a record for 'Enterprise'
	 * @param id
	 */
	void delete(long id);
}
