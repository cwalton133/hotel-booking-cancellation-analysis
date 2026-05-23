-- Exploratory Data Analysis (SQL)
SELECT
ROUND(
SUM(is_canceled)*100.0/COUNT(*),2
) AS CancellationRate
FROM hotel_bookings;

-- Approximately 28.33% of all bookings were cancelled.
-- Insight
-- More than one-third of reservations are lost before arrival, indicating a major revenue leakage issue.

-- Analysis 2: Cancellation Rate by Hotel Type
SELECT
hotel,
COUNT(*) AS TotalBookings,
SUM(is_canceled) AS CancelledBookings,
ROUND(
SUM(is_canceled)*100.0/COUNT(*),2
) AS CancellationRate
FROM hotel_bookings
GROUP BY hotel;

-- 'Resort Hotel', '40060', '11122', '27.76'
-- 'City Hotel', '4420', '1478', '33.44'

-- Analysis 3: Average Daily Rate vs Cancellation
SELECT
is_canceled,
ROUND(AVG(adr),2) AS AvgADR
FROM hotel_bookings
GROUP BY is_canceled;


-- Analysis 4: Lead Time Impact
SELECT
CASE
WHEN lead_time <= 30 THEN '0-30 Days'
WHEN lead_time <= 90 THEN '31-90 Days'
WHEN lead_time <= 180 THEN '91-180 Days'
ELSE '180+ Days'
END AS LeadTimeGroup,
COUNT(*) AS TotalBookings,
SUM(is_canceled) AS Cancellations
FROM hotel_bookings
GROUP BY
CASE
WHEN lead_time <= 30 THEN '0-30 Days'
WHEN lead_time <= 90 THEN '31-90 Days'
WHEN lead_time <= 180 THEN '91-180 Days'
ELSE '180+ Days'
END;

-- Analysis 5: Waiting List Analysis
SELECT
is_canceled,
AVG(days_in_waiting_list) AS AvgWaitingDays
FROM hotel_bookings
GROUP BY is_canceled;

-- Analysis 6: Market Segment Analysis
SELECT
market_segment,
COUNT(*) AS TotalBookings,
SUM(is_canceled) AS Cancellations
FROM hotel_bookings
GROUP BY market_segment
ORDER BY TotalBookings DESC;


-- Analysis 7: Monthly Cancellation Trend
SELECT
arrival_date_month,
COUNT(*) AS Bookings,
SUM(is_canceled) AS Cancellations
FROM hotel_bookings
GROUP BY arrival_date_month;