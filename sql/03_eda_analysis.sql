-- Exploratory Data Analysis (SQL)
SELECT
ROUND(
SUM(is_canceled)*100.0/COUNT(*),2
) AS CancellationRate
FROM hotel_bookings;

-- Approximately 28.33% of all bookings were cancelled.
-- Insight
-- More than one-third of reservations are lost before arrival, indicating a major revenue leakage issue.
