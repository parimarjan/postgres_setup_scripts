-- MySQL Schema File

-- Creating Table: customers
CREATE TABLE customers (
    `index` BIGINT,
    `CustomerID` BIGINT,
    `Segment` TEXT,
    `Currency` TEXT
);

-- Creating Table: gasstations
CREATE TABLE gasstations (
    `index` BIGINT,
    `GasStationID` BIGINT,
    `ChainID` BIGINT,
    `Country` TEXT,
    `Segment` TEXT
);

-- Creating Table: products
CREATE TABLE products (
    `index` BIGINT,
    `ProductID` BIGINT,
    `Description` TEXT
);

-- Creating Table: transactions_1k
CREATE TABLE transactions_1k (
    `index` BIGINT,
    `TransactionID` BIGINT,
    `Date` TEXT,
    `Time` TEXT,
    `CustomerID` BIGINT,
    `CardID` BIGINT,
    `GasStationID` BIGINT,
    `ProductID` BIGINT,
    `Amount` BIGINT,
    `Price` DOUBLE
);

-- Creating Table: yearmonth
CREATE TABLE yearmonth (
    `index` BIGINT,
    `CustomerID` BIGINT,
    `Date` BIGINT,
    `Consumption` DOUBLE
);

-- Creating Indexes
CREATE INDEX customers_customerid_index ON customers (`CustomerID`);
CREATE INDEX gasstations_gasstationid_index ON gasstations (`GasStationID`);
CREATE INDEX ix_customers_index ON customers (`index`);
CREATE INDEX ix_gasstations_index ON gasstations (`index`);
CREATE INDEX ix_products_index ON products (`index`);
CREATE INDEX ix_transactions_1k_index ON transactions_1k (`index`);
CREATE INDEX ix_yearmonth_index ON yearmonth (`index`);
CREATE INDEX products_productid_index ON products (`ProductID`);
CREATE INDEX transactions_1k_customerid_index ON transactions_1k (`CustomerID`);
CREATE INDEX transactions_1k_gasstationid_index ON transactions_1k (`GasStationID`);
CREATE INDEX transactions_1k_productid_index ON transactions_1k (`ProductID`);
CREATE INDEX yearmonth_customerid_index ON yearmonth (`CustomerID`);

