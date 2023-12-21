-- MySQL Schema File

-- Creating Table: client
CREATE TABLE client (
    `index` BIGINT,
    client_id BIGINT,
    kraj TEXT,
    obor TEXT
);

-- Creating Table: dobito
CREATE TABLE dobito (
    `index` BIGINT,
    client_id DOUBLE,
    month_year_datum_transakce TEXT,
    sluzba TEXT,
    kc_dobito DOUBLE
);

-- Creating Table: probehnuto
CREATE TABLE probehnuto (
    `index` BIGINT,
    client_id DOUBLE,
    month_year_datum_transakce TEXT,
    sluzba TEXT,
    kc_proklikano DOUBLE
);

-- Creating Table: probehnuto_mimo_penezenku
CREATE TABLE probehnuto_mimo_penezenku (
    `index` BIGINT,
    client_id BIGINT,
    `Month/Year` TEXT,
    probehla_inzerce_mimo_penezenku TEXT
);

-- Creating Indexes
CREATE INDEX client_client_id_index ON client (client_id);
CREATE INDEX dobito_client_id_index ON dobito (client_id);
CREATE INDEX ix_client_index ON client (`index`);
CREATE INDEX ix_dobito_index ON dobito (`index`);
CREATE INDEX ix_probehnuto_index ON probehnuto (`index`);
CREATE INDEX ix_probehnuto_mimo_penezenku_index ON probehnuto_mimo_penezenku (`index`);
CREATE INDEX probehnuto_client_id_index ON probehnuto (client_id);
CREATE INDEX probehnuto_mimo_penezenku_client_id_index ON probehnuto_mimo_penezenku (client_id);

