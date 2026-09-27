use financial_db;
show tables;

-- A. BANKLOANREPORT|SUMMARY
-- 1. KPI's:
-- 1.1) NumberofApplications
select * from financial_loan;
--  a) TotalLoanApplications
select Count(id) as TotalLoanApplications from financial_loan;
-- 	b) MTDLoanApplications(Month-To-Datei.e.CurrentMonth)
select count(id) as MTD_Loan_Applications
from financial_loan
where 
	month(issue_date) = (select month(max(issue_date)) from financial_loan) 
	and 
    Year(issue_date) = (select Year(max(issue_date)) from financial_loan);
-- 	c) PMTD (Previous Month-to-Date) Loan Applications
select count(id) as PMTD_Loan_Applications from financial_loan
where 
	month(issue_date) = (select month(date_sub(max(issue_date),interval 1 month)) from financial_loan)
    and
    Year(issue_date) = (select Year(max(issue_date)) from financial_loan);

-- 1.2) FundedAmount(TotalLoanAmountapproved)
select * from financial_loan;
-- 	a) TotalFundedAmount
select sum(loan_amount) as Total_Funded_Amount
from financial_loan;
-- 	b) MTD (Month-to-Date) Total Funded Amount
SELECT SUM(loan_amount) AS MTD_Funded_Amount
FROM financial_loan
WHERE 
	MONTH(issue_date) = (select MONTH(max(issue_date)) from financial_loan)
	AND 
    YEAR(issue_date) = (select year(max(issue_date)) from financial_loan);
-- 	c) PMTD (Previous Month-to-Date) total Funded Amount
select sum(loan_amount) as PMTD_Funded_Amount
from financial_loan
Where 
	month(issue_date) = (select month(date_sub(max(issue_date),interval 1 month)) from financial_loan)
    and
    Year(issue_date) = (select year(max(issue_date)) from financial_loan);

-- 1.3) AmountReceived(LoanAmountpaid)
select * from financial_loan;
-- 	a) TotalAmountReceived
select sum(total_payment) AS Total_Amount_Received from financial_loan;
-- 	b) MTDTotalAmountReceived
select sum(total_payment) as MTD_Amount_Received from financial_loan
where 
	date_format(issue_date, '%Y-%m') = (select date_format(max(issue_date),'%Y-%m') from financial_loan);
-- 	c) PMTDTotalAmountReceived
select sum(total_payment) as PMTD_Amount_Received from financial_loan
where
	date_format(issue_date, '%Y-%m') = 
    (select date_format(date_sub(max(issue_date), interval 1 month),'%Y-%m') from financial_loan);
-- 1.4) InterestRate
select * from financial_loan;
-- 	a) AverageInterestRate
select round(avg(int_rate)*100,2) as Avg_Interest_Rate from financial_loan;
-- 	b) MTDAverageInterest
select round(avg(int_rate)*100,2) as MTD_Avg_Interest_Rate from financial_loan
where date_format(issue_date,'%Y-%m') = (select date_format(max(issue_date),'%Y-%m') from financial_loan);
-- 	c) PMTDAverageInteres
select round(avg(int_rate)*100,2) as PMTD_Avg_Interest_Rate from financial_loan
where 
	date_format(issue_date,'%Y-%m') = 
	(select date_format(date_sub(max(issue_date),interval 1 month),'%Y-%m') from financial_loan);

-- 1.5) DTI(Debt to Income ratio)
select * from financial_loan;
-- a) AvgDTI
select round(avg(dti)*100,2) AS Avg_DTI from financial_loan;
-- b) MTDAvgDTI
select round(avg(dti)*100,2) AS MTD_Avg_DTI from financial_loan
where date_format(issue_date,'%Y-%m') = (select date_format(max(issue_date),'%Y-%m') from financial_loan);
-- c) PMTDAvgDT
select round(avg(dti)*100,2) AS PMTD_Avg_DTI from financial_loan
where 
	date_format(issue_date,'%Y-%m') 
    = (select date_format(date_sub(max(issue_date),interval 1 month),'%Y-%m') from financial_loan);

-- 2. GOODLOANISSUED
select * from financial_loan;
-- 2.1) GoodLoanPercentage
select concat(round((count(*)/(select count(id) from financial_loan))*100,2),'%') as Good_Loan_Applications from financial_loan
where loan_status in ("Fully Paid","Current");

-- 2.2) GoodLoanApplications
select count(*) as Good_Loan_Applications from financial_loan
where loan_status in ("Fully Paid","Current");

-- 2.3) GoodLoanFundedAmount
select sum(loan_amount) as Good_Loan_Amount_Received
from financial_loan
where loan_status in ('Fully Paid','Current');

-- 2.4) GoodLoanAmountReceive
select sum(total_payment) as Good_Loan_Amount_Received
from financial_loan
where loan_status in ('Fully Paid','Current');


-- 3. BAD LOANISSUED
select * from financial_loan;
-- 3.1) BadLoanPercentage
SELECT
ROUND(
    COUNT(CASE
            WHEN loan_status = 'Charged Off'
            THEN id
          END)
    *100.0/COUNT(*),2
) AS Bad_Loan_Percentage
FROM financial_loan;

-- 3.2) BadLoanApplications
select count(*) as Good_Loan_Applications from financial_loan
where loan_status not in ("Fully Paid","Current");

-- 3.3) BadLoanFunded Amount
select sum(loan_amount) as Good_Loan_Amount_Received
from financial_loan
where loan_status not in ('Fully Paid','Current');

-- 3.4) BadLoanAmountReceived
select sum(total_payment) as Good_Loan_Amount_Received
from financial_loan
where loan_status not in ('Fully Paid','Current');

-- 4. LOAN STATUS
select * from financial_loan;
-- 4.1) Complete Loan Status Summary
select 
	loan_status, 
    count(*) as 'Applications', 
	sum(loan_amount) as 'Funded Amount',
    sum(total_payment) as 'Amount Received',
    round(avg(int_rate),2) as 'Avg Interest',
    round(avg(dti),2) as 'Avg DTI'
from financial_loan
group by loan_status;

-- 4.2) MTDLoanStatus Summary
select 
	loan_status, 
    count(*) as 'Applications', 
	sum(loan_amount) as 'Funded Amount',
    sum(total_payment) as 'Amount Received',
    round(avg(int_rate),2) as 'Avg Interest',
    round(avg(dti),2) as 'Avg DTI'
from financial_loan
where date_format(issue_date,'%Y-%m') = (select date_format(max(issue_date),'%Y-%m') from financial_loan)
group by loan_status;


-- B. BANKLOANREPORT|OVERVIEW 
-- (Showcase total number of applications, total loan amount and total amount received for the following parameters.)
-- a. MONTH
SELECT
    MONTH(issue_date) AS Month_Number,
    MONTHNAME(issue_date) AS Month_Name,
    COUNT(*) AS Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY MONTH(issue_date), MONTHNAME(issue_date)
ORDER BY MONTH(issue_date);
-- b. STATE
select 
	distinct address_state,
    count(*) as Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
from financial_loan
group by address_state
order by Loan_Applications desc;
-- c. TERM
select 
	distinct term,
    count(*) as Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
from financial_loan
group by term
order by Loan_Applications desc;
-- d. EMPLOYEELENGTH
select 
	distinct emp_length,
    count(*) as Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
from financial_loan
group by 1
order by 2 desc;
-- e. PURPOSE
select 
	distinct purpose,
    count(*) as Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
from financial_loan
group by 1
order by 2 desc;
-- f. HOMEOWNERSHIP
select 
	distinct home_ownership,
    count(*) as Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Amount_Received
from financial_loan
group by 1
order by 2 desc;


-- C. Miscellaneous | OVERVIEW
-- 1. MoM LoanApplication growth rate
select 
	month_number, month_name,
    concat(round(((
    (loan_applications - previous_month_applications)/previous_month_applications)*100),2),'%')
    as 'mom_growth_%'
from
(select 
	month(issue_date) as month_number,
    monthname(issue_date) as month_name,
    count(*) as loan_applications,
     LAG(COUNT(*)) OVER (ORDER BY MONTH(issue_date)) AS previous_month_applications
from financial_loan
group by month_number,month_name) as MOMT;
-- 2. Mom LoanAmountDisbursed growth rate
select 
	month_number,month_name,
    concat(round(((funded_amount-previous_month_amount)/previous_month_amount)*100,2),'%')
    as mom_growth_percentage
from
(
select 
	month(issue_date) as month_number,
    monthname(issue_date) as month_name,
    sum(loan_amount) as funded_amount,
    lag(sum(loan_amount)) over(order by month(issue_date)) as previous_month_amount
from financial_loan
group by 1,2) as MOMA;
-- 3. Interest rate for various subgrade and grade loan type
-- 3.1) Interest Rate by Grade
SELECT
    grade,
    concat(ROUND(AVG(int_rate) * 100,2),'%') AS Avg_Interest_Rate
FROM financial_loan
GROUP BY grade
ORDER BY grade;

-- 3.2) Interest Rate by Subgrade
SELECT
    sub_grade,
    concat(ROUND(AVG(int_rate) * 100,2),'%') AS Avg_Interest_Rate
FROM financial_loan
GROUP BY sub_grade
ORDER BY sub_grade;