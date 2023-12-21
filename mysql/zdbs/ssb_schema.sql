-- MySQL Schema File

-- Creating Table: customer
CREATE TABLE customer (
    `index` BIGINT,
    c_custkey BIGINT,
    c_name TEXT,
    c_address TEXT,
    c_city TEXT,
    c_nation TEXT,
    c_region TEXT,
    c_phone TEXT,
    c_mktsegment TEXT
);

-- Creating Table: dim_date
CREATE TABLE dim_date (
    `index` BIGINT,
    d_datekey BIGINT,
    d_date TEXT,
    d_dayofweek TEXT,
    d_month TEXT,
    d_year BIGINT,
    d_yearmonthnum BIGINT,
    d_yearmonth TEXT,
    d_daynuminweek BIGINT,
    d_daynuminmonth BIGINT,
    d_daynuminyear BIGINT,
    d_monthnuminyear BIGINT,
    d_weeknuminyear BIGINT,
    d_sellingseason TEXT,
    d_lastdayinweekfl BIGINT,
    d_lastdayinmonthfl BIGINT,
    d_holidayfl BIGINT,
    d_weekdayfl BIGINT
);

-- Creating Table: lineorder
CREATE TABLE lineorder (
    `index` BIGINT,
    lo_orderkey BIGINT,
    lo_linenumber BIGINT,
    lo_custkey BIGINT,
    lo_partkey BIGINT,
    lo_suppkey BIGINT,
    lo_orderdate BIGINT,
    lo_orderpriority TEXT,
    lo_shippriority BIGINT,
    lo_quantity BIGINT,
    lo_extendedprice BIGINT,
    lo_ordertotalprice BIGINT,
    lo_discount BIGINT,
    lo_revenue BIGINT,
    o_supplycost BIGINT,
    lo_tax BIGINT,
    lo_commitdate BIGINT,
    lo_shipmode TEXT
);

-- Creating Table: part
CREATE TABLE part (
    `index` BIGINT,
    p_partkey BIGINT,
    p_name TEXT,
    p_mfgr TEXT,
    p_category TEXT,
    p_brand1 TEXT,
    p_color TEXT,
    p_type TEXT,
    p_size BIGINT,
    p_container TEXT
);

-- Creating Table: supplier
CREATE TABLE supplier (
    `index` BIGINT,
    s_suppkey BIGINT,
    s_name TEXT,
    s_address TEXT,
    s_city TEXT,
    s_nation TEXT,
    s_region TEXT,
    s_phone TEXT
);

-- Creating Index: customer_c_custkey_index
CREATE INDEX customer_c_custkey_index ON customer (c_custkey);

-- Creating Index: dim_date_d_datekey_index
CREATE INDEX dim_date_d_datekey_index ON dim_date (d_datekey);

-- Creating Index: ix_customer_index
CREATE INDEX ix_customer_index ON customer (`index`);

-- Creating Index: ix_dim_date_index
CREATE INDEX ix_dim_date_index ON dim_date (`index`);

-- Creating Index: ix_lineorder_index
CREATE INDEX ix_lineorder_index ON lineorder (`index`);

-- Creating Index: ix_part_index
CREATE INDEX ix_part_index ON part (`index`);

-- Creating Index: ix_supplier_index
CREATE INDEX ix_supplier_index ON supplier (`index`);

-- Creating Index: lineorder_lo_custkey_index
CREATE INDEX lineorder_lo_custkey_index ON lineorder (lo_custkey);

-- Creating Index: lineorder_lo_orderdate_index
CREATE INDEX lineorder_lo_orderdate_index ON lineorder (lo_orderdate);

-- Creating Index: lineorder_lo_partkey_index
CREATE INDEX lineorder_lo_partkey_index ON lineorder (lo_partkey);

-- Creating Index: lineorder_lo_suppkey_index
CREATE INDEX lineorder_lo_suppkey_index ON lineorder (lo_suppkey);

-- Creating Index: part_p_partkey_index
CREATE INDEX part_p_partkey_index ON part (p_partkey);

-- Creating Index: supplier_s_suppkey_index
CREATE INDEX supplier_s_suppkey_index ON supplier (s_suppkey);
