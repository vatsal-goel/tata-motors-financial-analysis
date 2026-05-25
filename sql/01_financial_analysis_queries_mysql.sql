-- Tata Motors Financial Analysis Project
-- MySQL Workbench-ready analysis queries
-- Run this file ONLY AFTER importing the 4 cleaned CSV files into the tables.

USE tata_motors_financial_analysis;

-- 1. Quick row-count check for all imported tables
SELECT 'income_statement' AS table_name, COUNT(*) AS total_rows FROM income_statement
UNION ALL
SELECT 'balance_sheet', COUNT(*) FROM balance_sheet
UNION ALL
SELECT 'cash_flow_statement', COUNT(*) FROM cash_flow_statement
UNION ALL
SELECT 'financial_ratios', COUNT(*) FROM financial_ratios;

-- 2. Confirm financial years available in each table
SELECT financial_year FROM income_statement ORDER BY financial_year;
SELECT financial_year FROM balance_sheet ORDER BY financial_year;
SELECT financial_year FROM cash_flow_statement ORDER BY financial_year;
SELECT financial_year FROM financial_ratios ORDER BY financial_year;

-- 3. Revenue and profit trend
SELECT
    financial_year,
    total_revenue_from_operations AS revenue_from_operations_cr,
    profit_for_year AS profit_after_tax_cr,
    ROUND((profit_for_year / NULLIF(total_revenue_from_operations, 0)) * 100, 2) AS net_profit_margin_pct
FROM income_statement
ORDER BY financial_year;

-- 4. Year-on-year revenue and profit growth
SELECT
    financial_year,
    revenue_from_operations_cr,
    profit_after_tax_cr,
    ROUND(((revenue_from_operations_cr - LAG(revenue_from_operations_cr) OVER (ORDER BY financial_year)) /
        NULLIF(LAG(revenue_from_operations_cr) OVER (ORDER BY financial_year), 0)) * 100, 2) AS revenue_growth_pct,
    ROUND(((profit_after_tax_cr - LAG(profit_after_tax_cr) OVER (ORDER BY financial_year)) /
        NULLIF(ABS(LAG(profit_after_tax_cr) OVER (ORDER BY financial_year)), 0)) * 100, 2) AS pat_growth_pct
FROM financial_ratios
ORDER BY financial_year;

-- 5. Profitability ratios trend
SELECT
    financial_year,
    net_profit_margin_pct,
    pbt_margin_pct,
    return_on_assets_pct,
    return_on_equity_pct,
    asset_turnover_ratio
FROM financial_ratios
ORDER BY financial_year;

-- 6. Liquidity position trend
SELECT
    financial_year,
    current_assets_cr,
    current_liabilities_cr,
    working_capital_cr,
    current_ratio,
    quick_ratio,
    cash_ratio
FROM financial_ratios
ORDER BY financial_year;

-- 7. Debt and solvency trend
SELECT
    financial_year,
    total_assets_cr,
    total_equity_cr,
    total_liabilities_cr,
    total_borrowings_cr,
    debt_to_equity_ratio,
    debt_ratio
FROM financial_ratios
ORDER BY financial_year;

-- 8. Cash flow performance trend
SELECT
    financial_year,
    net_cash_from_operating_activities_cr,
    auto_free_cash_flow_cr,
    capex_payments_cr,
    operating_cash_flow_margin_pct,
    free_cash_flow_margin_pct,
    capex_to_revenue_pct
FROM financial_ratios
ORDER BY financial_year;

-- 9. Expense pressure analysis
SELECT
    financial_year,
    total_income,
    total_expenses,
    ROUND((total_expenses / NULLIF(total_income, 0)) * 100, 2) AS expense_to_income_pct,
    finance_costs,
    depreciation_and_amortisation_expense,
    product_development_engineering_expenses
FROM income_statement
ORDER BY financial_year;

-- 10. Best year by revenue, PAT, liquidity, and free cash flow
SELECT 'Highest revenue' AS metric, financial_year, revenue_from_operations_cr AS value_cr FROM financial_ratios ORDER BY revenue_from_operations_cr DESC LIMIT 1;
SELECT 'Highest PAT' AS metric, financial_year, profit_after_tax_cr AS value_cr FROM financial_ratios ORDER BY profit_after_tax_cr DESC LIMIT 1;
SELECT 'Best current ratio' AS metric, financial_year, current_ratio AS value FROM financial_ratios ORDER BY current_ratio DESC LIMIT 1;
SELECT 'Highest auto free cash flow' AS metric, financial_year, auto_free_cash_flow_cr AS value_cr FROM financial_ratios ORDER BY auto_free_cash_flow_cr DESC LIMIT 1;

-- 11. Final joined analyst view for dashboard / BI export
CREATE OR REPLACE VIEW vw_tata_motors_financial_health AS
SELECT
    r.financial_year,
    r.revenue_from_operations_cr,
    r.profit_after_tax_cr,
    r.net_profit_margin_pct,
    r.return_on_assets_pct,
    r.return_on_equity_pct,
    r.current_ratio,
    r.quick_ratio,
    r.cash_ratio,
    r.working_capital_cr,
    r.debt_to_equity_ratio,
    r.debt_ratio,
    r.net_cash_from_operating_activities_cr,
    r.auto_free_cash_flow_cr,
    r.free_cash_flow_margin_pct,
    CASE
        WHEN r.net_profit_margin_pct >= 5 AND r.current_ratio >= 1 AND r.debt_to_equity_ratio <= 1 THEN 'Strong'
        WHEN r.net_profit_margin_pct >= 0 AND r.current_ratio >= 0.8 THEN 'Moderate'
        ELSE 'Weak / Watchlist'
    END AS business_health_category
FROM financial_ratios r;

SELECT * FROM vw_tata_motors_financial_health ORDER BY financial_year;
