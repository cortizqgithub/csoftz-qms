-- Feb.23/2017
CREATE TABLE IF NOT EXISTS qms_admin.enterprise (
	id bigint,
	name text,
	PRIMARY KEY (id, name)
);

-- ALTER TABLE statements for table enterprise
ALTER TABLE qms_admin.enterprise
add description text;