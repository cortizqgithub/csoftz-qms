/*----------------------------------------------------------------------------*/
/* Source File:   CASSANDRACONFIGURATION.JAVA                                 */
/* Description:   Configures Cassandra                                        */
/* Author:        Carlos Adolfo Ortiz Quirós (COQ)                            */
/* Date:          Feb.23/2017                                                 */
/* Last Modified: Mar.11/2017                                                 */
/* Version:       1.2                                                         */
/* Copyright (c), 2017 CSoftZ                                                 */
/*----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
 History
 Feb.23/2017 COQ  File created.
 -----------------------------------------------------------------------------*/
package com.csoftz.qms.admin.api.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.cassandra.repository.config.EnableCassandraRepositories;

/**
 * Configures application to allow CORS (API Web App) and other configs.
 *
 * @since 1.8(JDK), Feb.23/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.2, Mar.11/2017
 */
@Configuration
@EnableCassandraRepositories(basePackages = { "com.csoftz.qms.admin.api" })
public class CassandraConfiguration {
}
