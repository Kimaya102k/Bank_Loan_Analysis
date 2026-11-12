SELECT
    COUNT(*) AS total_loans,
    SUM(Actual_Loan_Status) AS total_defaults,
    ROUND(AVG(Actual_Loan_Status)*100,2) AS overall_default_rate_pct

FROM loan_data;
SELECT
    Risk_Category,
     COUNT(*) AS borrower_count,
    ROUND(AVG(Default_Probability) * 100, 2) AS avg_predicted_risk_pct,
    ROUND(AVG(Actual_Loan_Status) * 100, 2) AS actual_default_rate_pct
FROM loan_data
GROUP BY Risk_Category
ORDER BY actual_default_rate_pct DESC;

SELECT *
FROM loan_data
WHERE Risk_Category = 'High Risk'
ORDER BY Default_Probability DESC
LIMIT 20;
