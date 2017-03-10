package com.csoftz.qms.admin.repository;

import org.springframework.data.cassandra.repository.CassandraRepository;

import com.csoftz.qms.admin.domain.Enterprise;

public interface IEntCassaRepo extends CassandraRepository<Enterprise> {

}
