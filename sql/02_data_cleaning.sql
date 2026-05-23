-- Remove Duplicate Records

SELECT *,
ROW_NUMBER() OVER(
PARTITION BY hotel,
lead_time,
arrival_date_year,
arrival_date_month
) AS row_num
FROM hotel_bookings;

-- Check Missing Values

SELECT
COUNT(*) AS TotalRows,
COUNT(children) AS ChildrenCount,
COUNT(country) AS CountryCount,
COUNT(agent) AS AgentCount,
COUNT(company) AS CompanyCount
FROM hotel_bookings;
-- Missing Values is TotalRow: 44480

-- Replace Missing Values
UPDATE hotel_bookings
SET children = 0
WHERE children IS NULL;

SET SQL_SAFE_UPDATES = 0;
UPDATE hotel_bookings SET children = 0 WHERE children IS NULL;
SET SQL_SAFE_UPDATES = 0;
UPDATE hotel_bookings SET children = 0 WHERE children IS NULL;
SET SQL_SAFE_UPDATES = 1;

-- Remove Personally Identifiable Information
ALTER TABLE hotel_bookings
DROP COLUMN name,
DROP COLUMN email,
DROP COLUMN phone_number,
DROP COLUMN credit_card;