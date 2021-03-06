-- xzump8.logs_vaisseau definition

-- Drop table

-- DROP TABLE xzump8.logs_vaisseau;

CREATE TABLE logs_vaisseau (
	id varchar NOT NULL,
	"date" date NOT NULL,
	heure time NOT NULL,
	vaisseau_id int4 NOT NULL,
	message varchar(255) NULL,
	CONSTRAINT logs_vaisseau_pk PRIMARY KEY (id)
);


-- xzump8.logs_vaisseau foreign keys

ALTER TABLE logs_vaisseau ADD CONSTRAINT logs_vaisseau_fk FOREIGN KEY (vaisseau_id) REFERENCES vaisseau(id);