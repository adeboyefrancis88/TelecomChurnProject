Create Database TelecomCustomerProject

Use TelecomCustomerProject

select Top 5 * from dbo.telecom_customer_churn
order by Gender

select Top 5 * from dbo.telecom_zipcode_population
order by Population

select * from dbo.telecom_customer_churn

select 
A.Customer_ID,
A.Gender,
A.Age,A.Number_of_Dependents,A.city,A.zip_code,A.Offer,A.Avg_Monthly_GB_Download,A.Phone_Service,A.Internet_Type,
A.Contract,A.Payment_Method,A.Monthly_Charge,A.Tenure_in_months,A.Total_Revenue,A.Customer_Status,A.Churn_Category,A.Churn_Reason,B.Population
from dbo.telecom_customer_churn as A 
JOIN dbo.telecom_zipcode_population as B
ON A.Zip_Code = B.Zip_Code



SELECT 
  A.Customer_ID,
  A.Gender,
  A.Age,
  A.Number_of_Dependents,
  A.city,
  A.zip_code,
  A.Offer,
  A.Avg_Monthly_GB_Download,
  A.Phone_Service,
  A.Internet_Type,
  A.Contract,
  A.Payment_Method,
  A.Monthly_Charge,
  A.Tenure_in_months,
  A.Total_Revenue,
  A.Customer_Status,
  A.Churn_Category,
  A.Churn_Reason,
  B.Population
FROM 
  dbo.telecom_customer_churn AS A 
JOIN 
  dbo.telecom_zipcode_population AS B ON A.Zip_Code = B.Zip_Code
WHERE 
  A.Customer_ID IS NOT NULL
  AND A.Gender IS NOT NULL
  AND A.Age IS NOT NULL
  AND A.Number_of_Dependents IS NOT NULL
  AND A.city IS NOT NULL
  AND A.zip_code IS NOT NULL
  AND A.Offer IS NOT NULL
  AND A.Avg_Monthly_GB_Download IS NOT NULL
  AND A.Phone_Service IS NOT NULL
  AND A.Internet_Type IS NOT NULL
  AND A.Contract IS NOT NULL
  AND A.Payment_Method IS NOT NULL
  AND A.Monthly_Charge IS NOT NULL
  AND A.Tenure_in_months IS NOT NULL
  AND A.Total_Revenue IS NOT NULL
  AND A.Customer_Status IS NOT NULL
  AND A.Churn_Category IS NOT NULL
  AND A.Churn_Reason IS NOT NULL
  AND B.Population IS NOT NULL
  order by Customer_ID
