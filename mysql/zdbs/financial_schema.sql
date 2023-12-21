
-- CREATE DATABASE IF NOT EXISTS financial;
USE financial;

CREATE TABLE account (
    `index` BIGINT,
    account_id BIGINT,
    district_id BIGINT,
    frequency TEXT,
    date TEXT
);

CREATE TABLE card (
    `index` BIGINT,
    card_id BIGINT,
    disp_id BIGINT,
    type TEXT,
    issued TEXT
);

CREATE TABLE client (
    `index` BIGINT,
    client_id BIGINT,
    gender TEXT,
    birth_date TEXT,
    district_id BIGINT
);

CREATE TABLE disp (
    `index` BIGINT,
    disp_id BIGINT,
    client_id BIGINT,
    account_id BIGINT,
    type TEXT
);

CREATE TABLE district (
    `index` BIGINT,
    district_id BIGINT,
    A2 TEXT,
    A3 TEXT,
    A4 BIGINT,
    A5 BIGINT,
    A6 BIGINT,
    A7 BIGINT,
    A8 BIGINT,
    A9 BIGINT,
    A10 DOUBLE,
    A11 BIGINT,
    A12 DOUBLE,
    A13 DOUBLE,
    A14 BIGINT,
    A15 DOUBLE,
    A16 BIGINT
);

CREATE TABLE loan (
    `index` BIGINT,
    loan_id BIGINT,
    account_id BIGINT,
    date TEXT,
    amount BIGINT,
    duration BIGINT,
    payments DOUBLE,
    status TEXT
);

CREATE TABLE trans (
    `index` BIGINT,
    trans_id BIGINT,
    account_id BIGINT,
    date TEXT,
    type TEXT,
    operation TEXT,
    amount BIGINT,
    balance BIGINT,
    k_symbol TEXT,
    bank TEXT,
    account DOUBLE
);

CREATE TABLE trans_gen1 (
    `index` BIGINT,
    `operation` TEXT,
    `bank` TEXT,
    `k_symbol` TEXT,
    `type` TEXT,
    `date` TEXT
);

CREATE TABLE trans_gen_shuffle1 (
    `index` BIGINT,
    operation TEXT,
    bank TEXT,
    k_symbol TEXT,
    type TEXT,
    date TEXT
);

CREATE TABLE trans_gen_shuffle2 (
    `index` BIGINT,
    operation TEXT,
    bank TEXT,
    k_symbol TEXT,
    type TEXT,
    date TEXT
);

CREATE TABLE trans_random_domain (
    `index` BIGINT,
    operation TEXT,
    bank TEXT,
    k_symbol TEXT,
    type TEXT,
    date TEXT
);

CREATE TABLE trans_true_cols (
    `index` BIGINT,
    operation TEXT,
    bank TEXT,
    k_symbol TEXT,
    type TEXT,
    date TEXT
);
