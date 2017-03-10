package com.csoftz.qms.admin.repository;

import org.springframework.data.cassandra.repository.MapId;

import com.csoftz.qms.admin.domain.Enterprise;

public class EntCassandraRepo {
	private IEntCassaRepo cassRepo;

	private MapId m;
	public EntCassandraRepo(IEntCassaRepo repo) {
		this.cassRepo = repo;
		
		cassRepo.save(new Enterprise());
		cassRepo.findAll();
		cassRepo.findOne(m);
		cassRepo.delete(new Enterprise());
	}


}
