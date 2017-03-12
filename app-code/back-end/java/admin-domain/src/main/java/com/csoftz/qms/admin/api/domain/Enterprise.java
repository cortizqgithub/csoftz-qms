/*----------------------------------------------------------------------------*/
/* Source File:   ENTERPRISE.JAVA                                             */
/* Description:   Domain object for Enterprise information                    */
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
package com.csoftz.qms.admin.api.domain;

import java.io.Serializable;

import org.springframework.data.cassandra.mapping.Column;
import org.springframework.data.cassandra.mapping.PrimaryKey;
import org.springframework.data.cassandra.mapping.Table;

/**
 * QMS Microservice API
 * 
 * @since 1.8 (JDK), Mar.09/2017
 * @author Carlos Adolfo Ortiz Quirós (COQ)
 * @version 1.2, Mar.11/2017
 *
 */
@Table("enterprise")
public class Enterprise implements Serializable {

	/**
	 * Generated serialization.
	 */
	private static final long serialVersionUID = -4422861329060383381L;

	
	/**
	 * Fields
	 */
	@PrimaryKey	
	private Long id = 0L;
	
	@Column("name") 
	private String name = "";
	
	@Column("description") 
	private String description = "";

	/**
	 * Default constructor.
	 */
	public Enterprise() {
		super();
		
	}
	
	/**
	 * Constructor using fields.
	 * 
	 * @param id
	 *            Record identification (unique)
	 * @param name
	 *            Name of the enterprise (unique)
	 * @param description
	 *            (A description)
	 */
	public Enterprise(Long id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + (int) (id ^ (id >>> 32));
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Enterprise)) {
			return false;
		}
		Enterprise other = (Enterprise) obj;
		if (description == null) {
			if (other.description != null) {
				return false;
			}
		} else if (!description.equals(other.description)) {
			return false;
		}
		if (id != other.id) {
			return false;
		}
		if (name == null) {
			if (other.name != null) {
				return false;
			}
		} else if (!name.equals(other.name)) {
			return false;
		}
		return true;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Enterprise [id=" + id + ", name=" + name + ", description=" + description + "]";
	}
}
