/*----------------------------------------------------------------------------*/
/* Source File:   IENTERPRISESERVICE.JAVA                                     */
/* Description:   Domain object for Enterprise information implementation     */
/* Author:        Carlos Adolfo Ortiz Quirós (COQ)                            */
/* Date:          Mar.09/2017                                                 */
/* Last Modified: Mar.11/2017                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2017 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Mar.09/2017 COQ  File created.
 -----------------------------------------------------------------------------*/
package com.csoftz.qms.admin.api.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.csoftz.qms.admin.api.domain.Enterprise;
import com.csoftz.qms.admin.api.repository.IEnterpriseRepository;

/**
 * Domain object for Enterprise information implementation
 * 
 * @since 1.8 (JDK), Mar.09/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.2, Mar.11/2017
 *
 */
@Service
public class EnterpriseService implements IEnterpriseService {

	private final IEnterpriseRepository enterpriseRepository;

	/**
	 * Inject dependency.
	 * 
	 * @param enterpriseRepository
	 *            Use the access tier.
	 */
	public EnterpriseService(IEnterpriseRepository enterpriseRepository) {
		this.enterpriseRepository = enterpriseRepository;
	}

	/**
	 * @see com.csoftz.qms.admin.api.service.IEnterpriseService#save(com.csoftz.qms.admin.api.domain.Enterprise)
	 */
	@Override
	public Enterprise save(Enterprise enterprise) {
		return enterpriseRepository.save(enterprise);
	}

	/**
	 * @see com.csoftz.qms.admin.api.service.IEnterpriseService#save(java.util.List)
	 */
	@Override
	public List<Enterprise> save(List<Enterprise> enterpriseList) {
		enterpriseRepository.save(enterpriseList);
		return enterpriseList;
	}

	/**
	 * @see com.csoftz.qms.admin.api.service.IEnterpriseService#update(com.csoftz.qms.admin.api.domain.Enterprise)
	 */
	@Override
	public Enterprise update(Enterprise enterprise) {
		return enterpriseRepository.save(enterprise);
	}

	/**
	 * @see com.csoftz.qms.admin.api.service.IEnterpriseService#findOne(long)
	 */
	@Override
	public Optional<Enterprise> findOne(long id) {
		if (enterpriseRepository.exists(id)) {
			return Optional.of(enterpriseRepository.findOne(id));
		}
		return Optional.of(new Enterprise());
	}

	/**
	 * @see com.csoftz.qms.admin.api.service.IEnterpriseService#findAll()
	 */
	@Override
	public List<Enterprise> findAll() {
		List<Enterprise> enterpriseList = new ArrayList<>();
		enterpriseRepository.findAll().forEach(enterpriseList::add);
		return enterpriseList;
	}

	/**
	 * @see com.csoftz.qms.admin.api.service.IEnterpriseService#delete(long)
	 */
	@Override
	public void delete(long id) {
		enterpriseRepository.delete(id);
	}
}
