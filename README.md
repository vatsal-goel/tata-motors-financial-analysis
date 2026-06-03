# Tata Motors Financial Performance & Business Health Analysis

## Project Overview

This project analyzes the financial performance and business health of **Tata Motors Group** across FY2021 to FY2025 using consolidated financial statements, financial ratios, SQL-based analysis, Excel modelling, Python notebooks, and a Power BI dashboard.

The project focuses on understanding how Tata Motors performed over a five-year period in terms of revenue growth, profitability, liquidity, debt position, cash flow strength, and overall financial health.

The main objective was to move beyond a simple dashboard and build a complete business analysis project that connects financial data with meaningful interpretation.

---

## Project Objective

The objective of this project is to evaluate Tata Motors' financial performance and business health by analyzing:

- Revenue and profit movement from FY2021 to FY2025
- Profitability improvement and margin recovery
- Liquidity position and short-term financial pressure
- Debt reduction and solvency improvement
- Operating cash flow and auto free cash flow trends
- Overall business health score based on key financial indicators

---

## Tools and Technologies Used

| Tool | Purpose |
|---|---|
| Python | Data cleaning, validation, ratio analysis, visualization |
| Pandas | Data preparation and transformation |
| Matplotlib | Financial trend charts |
| SQL / MySQL Workbench | Table creation and financial analysis queries |
| Microsoft Excel | Financial ratio model and dashboard summary |
| Power BI | Interactive dashboard and storytelling |
| GitHub | Project documentation and version control |

---

## Data Sources

The project uses Tata Motors' publicly available annual reports and FY25 result documents.

Main source files used:

- Tata Motors Integrated Annual Report FY2020-21
- Tata Motors Integrated Annual Report FY2021-22
- Tata Motors Integrated Annual Report FY2022-23
- Tata Motors Integrated Annual Report FY2023-24
- Tata Motors Integrated Annual Report FY2024-25
- Q4 FY25 Results
- Q4 FY25 Investor Presentation
- Q4 FY25 Results Press Release
- Q4 FY25 Segment-wise Financial Snapshot

The analysis is based on **consolidated financial data** because the project studies Tata Motors Group performance, including major businesses such as Jaguar Land Rover, Commercial Vehicles, Passenger Vehicles, and related group operations.

---

## Repository Structure

```text
tata-motors-financial-analysis/
│
├── data/
│   ├── raw/
│   │   ├── annual_reports/
│   │   ├── quarterly_results/
│   │   └── segment_snapshot/
│   │
│   ├── interim/
│   │   └── extracted_tables/
│   │
│   └── cleaned/
│       ├── income_statement_combined_FY2021_to_FY2025.csv
│       ├── balance_sheet_combined_FY2021_to_FY2025.csv
│       ├── cash_flow_statement_combined_FY2021_to_FY2025.csv
│       ├── financial_ratios.csv
│       └── validated_financial_dataset.csv
│
├── notebooks/
│   ├── 01_data_cleaning_and_validation.ipynb
│   ├── 02_financial_ratio_analysis.ipynb
│   └── 03_visualization_and_business_insights.ipynb
│
├── sql/
│   ├── 00_create_database_and_tables_mysql.sql
│   ├── 01_financial_analysis_queries_mysql.sql
│   ├── 02_optional_load_data_commands_mysql.sql
│   └── README_MYSQL_WORKBENCH_STEPS.txt
│
├── excel/
│   └── tata_motors_financial_ratio_model.xlsx
│
├── powerbi/
│   └── tata_motors_financial_dashboard.pbix
│
├── reports/
│   ├── charts/
│   ├── dashboard_screenshots/
│   ├── tata_motors_business_insights_report.pdf
│   ├── financial_ratio_analysis_summary.csv
│   ├── financial_growth_summary.csv
│   ├── business_health_scorecard.csv
│   ├── business_health_scorecard_detailed.csv
│   ├── key_business_insights.csv
│   └── management_recommendations.csv
│
├── docs/
│   └── financial_ratio_formula_dictionary.csv
│
├── README.md
├── requirements.txt
└── .gitignore
```

---

## Project Workflow

### 1. Data Collection

I collected Tata Motors' annual reports and FY25 result documents from official company sources. The raw reports were used to extract consolidated income statement, balance sheet, and cash flow data.

### 2. Data Extraction and Cleaning

I created cleaned CSV files for:

- Income Statement
- Balance Sheet
- Cash Flow Statement
- Financial Ratios

The financial year formats were standardized to FY2021, FY2022, FY2023, FY2024, and FY2025 to make the datasets consistent and analysis-ready.

### 3. Data Validation

The first notebook validates the cleaned datasets by checking:

- Missing values
- Data types
- Financial year consistency
- Duplicate financial year entries
- Dataset merge quality

Output created:

```text
data/cleaned/validated_financial_dataset.csv
reports/data_validation_summary.csv
```

### 4. Financial Ratio Analysis

The second notebook calculates and analyzes key financial ratios across five years.

Key ratio categories include:

- Profitability Ratios
- Liquidity Ratios
- Solvency Ratios
- Cash Flow Ratios
- Growth Metrics
- Business Health Score

Output created:

```text
reports/financial_ratio_analysis_summary.csv
reports/financial_growth_summary.csv
reports/business_health_scorecard.csv
reports/financial_insight_flags.csv
```

### 5. Visualization and Business Insights

The third notebook converts the ratio analysis into visual trends and business-level insights.

It generates charts for:

- Revenue and Profit After Tax Trend
- Profitability Margin Trend
- ROA and ROE Trend
- Liquidity Ratio Trend
- Debt and Solvency Trend
- Cash Flow Margin Trend
- Working Capital Trend
- Business Health Scorecard Trend

Output created:

```text
reports/key_business_insights.csv
reports/management_recommendations.csv
reports/business_health_scorecard_detailed.csv
```

### 6. SQL Analysis

I created MySQL Workbench-ready SQL scripts to create tables and run financial analysis queries.

The SQL files include:

- Database creation
- Table creation
- Revenue trend queries
- Profitability queries
- Liquidity queries
- Solvency queries
- Cash flow queries
- Joined analyst view queries

### 7. Excel Financial Model

The Excel workbook includes:

- Dashboard Summary
- Income Statement
- Balance Sheet
- Cash Flow Statement
- Financial Ratios
- Growth Analysis
- Business Health Scorecard
- Source Notes

This model gives a spreadsheet-based view of the financial performance and ratio calculations.

### 8. Power BI Dashboard

The Power BI dashboard presents the final visual story of Tata Motors' financial performance.

Dashboard pages include:

1. Executive Financial Overview
2. Profitability & Growth Analysis
3. Liquidity, Debt & Cash Flow Health
4. Business Insights & Recommendations

---

## Key Financial Insights

### Revenue Performance

Tata Motors' revenue increased strongly from FY2021 to FY2024 and remained at a record level in FY2025. The revenue base expanded significantly over the five-year period, showing the scale recovery and growth of the group.

### Profitability Recovery

The company moved from losses in FY2021 and FY2022 to profitability from FY2023 onwards. FY2024 showed the strongest profit recovery, while FY2025 remained profitable despite a decline compared with FY2024.

### Debt and Solvency

Debt-to-equity reduced sharply by FY2025. This indicates that Tata Motors improved its capital structure and reduced balance sheet pressure during the analysis period.

### Liquidity Position

The current ratio remained below 1 across the period, showing that short-term liquidity needs continued to require monitoring. This does not automatically mean the company is weak, but it highlights an area that needs attention.

### Cash Flow Strength

Operating cash flow improved strongly from FY2023 onwards. Auto free cash flow remained positive in FY2024 and FY2025, supporting the view that the business generated meaningful cash after investment needs.

### Business Health Score

The overall business health score improved significantly from FY2021 to FY2025, mainly supported by profitability recovery, stronger cash flows, and debt reduction.

---

## Key Strengths Identified

- Strong revenue scale across the five-year period
- Clear profitability turnaround after FY2022
- Significant debt reduction by FY2025
- Positive operating cash flow in recent years
- Improved overall business health score
- Stronger financial position compared with the early years of the analysis period

---

## Key Risks Identified

- Liquidity ratios stayed below 1 across the analysis period
- PAT declined in FY2025 compared with FY2024
- Auto free cash flow reduced from FY2024 to FY2025
- Working capital remained negative
- Automotive demand, global trade conditions, and investment cycles can affect future performance

---

## Management Recommendations

Based on the analysis, the following areas need continued focus:

- Maintain discipline on debt reduction and finance costs
- Improve short-term liquidity position
- Keep monitoring working capital efficiency
- Protect margins through cost control
- Track free cash flow closely during investment-heavy periods
- Strengthen segment-level profitability after business restructuring and demerger

---

## Final Conclusion

Tata Motors showed a strong financial turnaround from FY2021 to FY2025. The company improved profitability, reduced debt pressure, generated stronger operating cash flow, and strengthened its overall business health.

At the same time, liquidity and working capital remain important areas to monitor. The project shows that Tata Motors entered FY2025 with a much stronger financial position than the early years of the analysis period, but continued financial discipline will be important for sustaining this improvement.

---

## Project Deliverables

| Deliverable | Status |
|---|---|
| Cleaned financial datasets | Completed |
| Data validation notebook | Completed |
| Financial ratio analysis notebook | Completed |
| Visualization and insights notebook | Completed |
| SQL scripts | Completed |
| Excel financial model | Completed |
| Power BI dashboard | Completed |
| Business insights report | Completed |
| README documentation | Completed |

---

## How to Run This Project

### Python Notebooks

Install the required libraries:

```bash
pip install -r requirements.txt
```

Run the notebooks in this order:

```text
01_data_cleaning_and_validation.ipynb
02_financial_ratio_analysis.ipynb
03_visualization_and_business_insights.ipynb
```

### SQL Files

Open MySQL Workbench and run:

```text
00_create_database_and_tables_mysql.sql
```

Then import the cleaned CSV files into the created tables.

After importing data, run:

```text
01_financial_analysis_queries_mysql.sql
```

### Excel Model

Open:

```text
excel/tata_motors_financial_ratio_model.xlsx
```

### Power BI Dashboard

Open:

```text
powerbi/tata_motors_financial_dashboard.pbix
```

---

## Skills Demonstrated

This project demonstrates practical skills in:

- Financial statement analysis
- Ratio analysis
- Business performance evaluation
- Data cleaning and validation
- SQL querying
- Excel financial modelling
- Power BI dashboarding
- Business insight generation
- Report writing and documentation

---

## Author

**Vatsal Goel**

Project: Tata Motors Financial Performance & Business Health Analysis
