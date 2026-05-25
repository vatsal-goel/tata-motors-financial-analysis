Tata Motors Financial Analysis - MySQL Workbench Steps

Use these files in this exact order:

1. Open MySQL Workbench and connect to your local server.

2. Open and run:
   00_create_database_and_tables_mysql.sql

   This creates the schema:
   tata_motors_financial_analysis

   It also creates these tables:
   - income_statement
   - balance_sheet
   - cash_flow_statement
   - financial_ratios

3. Import the CSV files manually through MySQL Workbench:

   Right-click tata_motors_financial_analysis > Table Data Import Wizard

   Import these cleaned CSV files into existing tables:

   data/cleaned/income_statement_combined_FY2021_to_FY2025.csv
   -> income_statement

   data/cleaned/balance_sheet_combined_FY2021_to_FY2025.csv
   -> balance_sheet

   data/cleaned/cash_flow_statement_combined_FY2021_to_FY2025.csv
   -> cash_flow_statement

   data/cleaned/financial_ratios.csv
   -> financial_ratios

4. After importing the CSV files, open and run:
   01_financial_analysis_queries_mysql.sql

5. Optional:
   02_optional_load_data_commands_mysql.sql

   This file is only for direct CSV loading through SQL. It requires LOCAL INFILE to be enabled, so the Workbench Import Wizard is recommended first.

Important:
- Do not run the analysis queries before importing the CSV data.
- If you get 'No database selected', run:
  USE tata_motors_financial_analysis;
- If you get 'Table does not exist', run the 00 setup file first.
