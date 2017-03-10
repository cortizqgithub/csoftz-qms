/*----------------------------------------------------------------------------*/
/* Source File:   IENTERPRISESERVICE.JAVA                                     */
/* Description:   Domain object for Enterprise information implementation     */
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

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.csoftz.qms.admin.domain.Enterprise;
import com.csoftz.qms.admin.repository.IEnterpriseRepository;

/**
 * Domain object for Enterprise information implementation
 * 
 * @since 1.8 (JDK), Mar.09/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.1, Mar.09/2017
 *
 */
public class EnterpriseService implements IEnterpriseService {

	private final IEnterpriseRepository enterpriseRepository;

	
	/** Inject dependency.
	 * @param enterpriseRepository Use the access tier.
	 */
	public EnterpriseService(IEnterpriseRepository enterpriseRepository) {
		this.enterpriseRepository = enterpriseRepository;
	}

	/**
	 * @see com.csoftz.qms.admin.service.IEnterpriseService#save(com.csoftz.qms.admin.domain.Enterprise)
	 */
	@Override
	public Enterprise save(Enterprise enterprise) {
		return enterpriseRepository.save(enterprise);
	}

	/**
	 * @see com.csoftz.qms.admin.service.IEnterpriseService#update(com.csoftz.qms.admin.domain.Enterprise)
	 */
	@Override
	public Enterprise update(Enterprise enterprise) {
		return enterpriseRepository.save(enterprise);
	}

	/**
	 * @see com.csoftz.qms.admin.service.IEnterpriseService#findOne(long)
	 */
	@Override
	public Optional<Enterprise> findOne(long id) {
		return Optional.of(enterpriseRepository.findOne(id));
	}

	/**
	 * @see com.csoftz.qms.admin.service.IEnterpriseService#findAll()
	 */
	@Override
	public List<Enterprise> findAll() {
		List<Enterprise> enterpriseList = new ArrayList<>();
		enterpriseRepository.findAll().forEach(enterpriseList::add);
		return enterpriseList;
	}

	/**
	 * @see com.csoftz.qms.admin.service.IEnterpriseService#delete(long)
	 */
	@Override
	public void delete(long id) {
		enterpriseRepository.delete(id);
	}
}
