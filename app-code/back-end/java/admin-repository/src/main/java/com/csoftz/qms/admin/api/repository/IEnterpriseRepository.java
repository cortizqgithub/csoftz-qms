/*----------------------------------------------------------------------------*/
/* Source File:   IENTERPRISEREPOSITORY.JAVA                                  */
/* Description:   Database Cassandra access for Enterprise domain objects     */
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
package com.csoftz.qms.admin.api.repository;

import org.springframework.data.repository.CrudRepository;

import com.csoftz.qms.admin.api.domain.Enterprise;

/**
 * Database Cassandra access for Enterprise domain objects
 * 
 * @since 1.8 (JDK), Mar.10/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.2, Mar.11/2017
 *
 */
public interface IEnterpriseRepository extends CrudRepository<Enterprise, Long> {
}