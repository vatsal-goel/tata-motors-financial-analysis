-- OPTIONAL: CSV import commands for MySQL Workbench
-- Use this ONLY if your MySQL allows LOCAL INFILE.
-- For beginners, the Table Data Import Wizard is easier and safer.
-- Replace the file paths below with the exact paths on your laptop.

USE tata_motors_financial_analysis;

-- You may need to enable this in MySQL Workbench connection settings:
-- OPT_LOCAL_INFILE=1
-- You may also need: SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'D:/Github Project/tata-motors-financial-analysis/data/cleaned/income_statement_combined_FY2021_to_FY2025.csv'
INTO TABLE income_statement
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'D:/Github Project/tata-motors-financial-analysis/data/cleaned/balance_sheet_combined_FY2021_to_FY2025.csv'
INTO TABLE balance_sheet
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'D:/Github Project/tata-motors-financial-analysis/data/cleaned/cash_flow_statement_combined_FY2021_to_FY2025.csv'
INTO TABLE cash_flow_statement
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'D:/Github Project/tata-motors-financial-analysis/data/cleaned/financial_ratios.csv'
INTO TABLE financial_ratios
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
