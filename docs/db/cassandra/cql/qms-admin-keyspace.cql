-- Feb.23/2017
CREATE KEYSPACE IF NOT EXISTS qms-admin WITH replication = {'class':'SimpleStrategy', 'replication_factor':3};