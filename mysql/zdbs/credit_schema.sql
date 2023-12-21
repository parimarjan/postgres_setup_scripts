-- MySQL Schema File

-- Creating Table: category
CREATE TABLE category (
    `index` BIGINT,
    category_no BIGINT,
    category_desc TEXT,
    category_code DOUBLE
);

-- Creating Table: charge
CREATE TABLE charge (
    `index` BIGINT,
    charge_no BIGINT,
    member_no BIGINT,
    provider_no BIGINT,
    category_no BIGINT,
    charge_dt TEXT,
    charge_amt DOUBLE,
    statement_no BIGINT,
    charge_code DOUBLE
);

-- Creating Table: corporation
CREATE TABLE corporation (
    `index` BIGINT,
    corp_no BIGINT,
    corp_name TEXT,
    street TEXT,
    city TEXT,
    state_prov DOUBLE,
    country DOUBLE,
    mail_code DOUBLE,
    phone_no DOUBLE,
    expr_dt TEXT,
    region_no BIGINT,
    corp_code DOUBLE
);

-- Creating Table: member
CREATE TABLE member (
    `index` BIGINT,
    member_no BIGINT,
    lastname TEXT,
    firstname TEXT,
    middleinitial DOUBLE,
    street TEXT,
    city TEXT,
    state_prov DOUBLE,
    country DOUBLE,
    mail_code DOUBLE,
    phone_no DOUBLE,
    photograph DOUBLE,
    issue_dt TEXT,
    expr_dt TEXT,
    region_no BIGINT,
    corp_no DOUBLE,
    prev_balance DOUBLE,
    curr_balance DOUBLE,
    member_code DOUBLE
);

-- Creating Table: payment
CREATE TABLE payment (
    `index` BIGINT,
    payment_no BIGINT,
    member_no BIGINT,
    payment_dt TEXT,
    payment_amt DOUBLE,
    statement_no BIGINT,
    payment_code DOUBLE
);

-- Creating Table: provider
CREATE TABLE provider (
    `index` BIGINT,
    provider_no BIGINT,
    provider_name TEXT,
    street TEXT,
    city TEXT,
    state_prov DOUBLE,
    mail_code DOUBLE,
    country DOUBLE,
    phone_no DOUBLE,
    issue_dt TEXT,
    expr_dt TEXT,
    region_no BIGINT,
    provider_code DOUBLE
);

-- Creating Table: region
CREATE TABLE region (
    `index` BIGINT,
    region_no BIGINT,
    region_name TEXT,
    street TEXT,
    city TEXT,
    state_prov TEXT,
    country TEXT,
    mail_code DOUBLE,
    phone_no DOUBLE,
    region_code DOUBLE
);

-- Creating Table: statement
CREATE TABLE statement (
    `index` BIGINT,
    statement_no BIGINT,
    member_no BIGINT,
    statement_dt TEXT,
    due_dt TEXT,
    statement_amt DOUBLE,
    statement_code DOUBLE
);

-- Creating Indexes
CREATE INDEX category_category_no_index ON category (category_no);
CREATE INDEX charge_category_no_index ON charge (category_no);
CREATE INDEX charge_member_no_index ON charge (member_no);
CREATE INDEX charge_provider_no_index ON charge (provider_no);
CREATE INDEX corporation_region_no_index ON corporation (region_no);
CREATE INDEX ix_category_index ON category (`index`);
CREATE INDEX ix_charge_index ON charge (`index`);
CREATE INDEX ix_corporation_index ON corporation (`index`);
CREATE INDEX ix_member_index ON member (`index`);
CREATE INDEX ix_payment_index ON payment (`index`);
CREATE INDEX ix_provider_index ON provider (`index`);
CREATE INDEX ix_region_index ON region (`index`);
CREATE INDEX ix_statement_index ON statement (`index`);
CREATE INDEX member_member_no_index ON member (member_no);
CREATE INDEX member_region_no_index ON member (region_no);
CREATE INDEX payment_member_no_index ON payment (member_no);
CREATE INDEX provider_provider_no_index ON provider (provider_no);
CREATE INDEX provider_region_no_index ON provider (region_no);
CREATE INDEX region_region_no_index ON region (region_no);
CREATE INDEX statement_member_no_index ON statement (member_no);

