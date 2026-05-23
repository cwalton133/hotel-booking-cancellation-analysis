# Project Requirements

# Hotel Booking Cancellation Analysis
### Identifying Revenue Loss Drivers and Reducing Reservation Cancellations

---

## 1. Project Overview

The hospitality industry depends heavily on effective reservation management to maximize room occupancy and revenue generation. Hotel booking cancellations can significantly impact operational efficiency, revenue forecasting, staffing requirements, and customer relationship management.

This project analyzes hotel booking data from Lagoon Island Lounge and Resort Hotel to identify the key factors contributing to reservation cancellations. The insights generated will support management in making data-driven decisions regarding pricing, promotions, booking policies, and customer retention strategies.

The project follows a complete end-to-end data analytics workflow, including data cleaning, exploratory data analysis (EDA), business intelligence reporting, and dashboard development using SQL and Power BI.

---

## 2. Business Problem

Over the past few years, Lagoon Island Lounge and Resort Hotel has experienced a significant increase in booking cancellations.

These cancellations have resulted in:

- Reduced revenue generation
- Lower room occupancy rates
- Inefficient resource allocation
- Difficulty forecasting future demand
- Increased operational costs

Management seeks to understand the factors influencing cancellations and develop strategies to reduce cancellation rates while improving overall profitability.

---

## 3. Project Objectives

The primary objective of this project is to identify the drivers of hotel booking cancellations and provide actionable business recommendations.

### Specific Objectives

- Analyze historical booking data between 2015 and 2017.
- Identify factors that contribute to booking cancellations.
- Evaluate the relationship between room pricing and cancellation behavior.
- Investigate the impact of booking lead time on cancellations.
- Analyze customer booking channels and market segments.
- Determine seasonal trends affecting reservations and cancellations.
- Measure the business impact of cancellations on hotel revenue.
- Develop interactive Power BI dashboards for business stakeholders.
- Provide recommendations to reduce cancellation rates.

---

## 4. Business Questions

This analysis aims to answer the following business questions:

### Question 1

What factors influence hotel reservation cancellations?

### Question 2

How can management reduce hotel reservation cancellations?

### Question 3

How can insights from booking behavior improve pricing and promotional decisions?

### Question 4

Which customer segments generate the highest cancellation rates?

### Question 5

Which booking channels contribute most to cancellations?

### Question 6

Are cancellations affected by room prices?

### Question 7

Does booking lead time influence cancellation behavior?

### Question 8

What seasonal patterns exist in hotel reservations and cancellations?

---

## 5. Assumptions

The following assumptions are made during the analysis:

### Assumption 1

No unusual events between 2015 and 2017 substantially affected booking behavior.

### Assumption 2

The historical data remains relevant for understanding future cancellation patterns.

### Assumption 3

There are no unforeseen negative consequences associated with implementing recommended strategies.

### Assumption 4

The hotel is not currently implementing any of the recommended solutions.

### Assumption 5

Booking cancellations are among the most significant factors affecting revenue generation.

### Assumption 6

Cancelled bookings result in vacant rooms for the reserved period.

### Assumption 7

Customers generally make reservations and cancellations within the same year.

---

## 6. Hypotheses

The following hypotheses will be tested during the analysis:

### Hypothesis 1

Higher room prices lead to higher booking cancellation rates.

### Hypothesis 2

Longer waiting-list periods increase the likelihood of cancellation.

### Hypothesis 3

Most hotel reservations originate from offline travel agents.

---

## 7. Scope of Analysis

### Included

- Hotel reservation behavior
- Booking cancellation analysis
- Customer segmentation
- Market segment analysis
- Booking channel analysis
- Lead-time analysis
- Pricing analysis
- Seasonal booking patterns
- Revenue impact assessment

### Excluded

- Future forecasting models
- Machine learning prediction models
- Competitor analysis
- Customer satisfaction analysis
- Hotel operational expenses

---

## 8. Dataset Information

### Dataset Name

Hotel Booking Demand Dataset

### Data Period

2015 – 2017

### Dataset Description

The dataset contains hotel reservation information for both Resort Hotels and City Hotels, including customer information, booking details, arrival dates, room pricing, market segments, distribution channels, and cancellation status.

### Target Variable

is_canceled

- 0 = Booking Not Cancelled
- 1 = Booking Cancelled

---

## 9. Key Dataset Attributes

| Variable | Description |
|-----------|-------------|
| hotel | Hotel Type |
| is_canceled | Cancellation Status |
| lead_time | Days Between Booking and Arrival |
| arrival_date_year | Arrival Year |
| arrival_date_month | Arrival Month |
| stays_in_weekend_nights | Weekend Stay Duration |
| stays_in_week_nights | Weekday Stay Duration |
| adults | Number of Adults |
| children | Number of Children |
| babies | Number of Babies |
| meal | Meal Type |
| country | Customer Country |
| market_segment | Booking Source |
| distribution_channel | Booking Channel |
| previous_cancellations | Previous Cancellation Count |
| booking_changes | Reservation Modifications |
| deposit_type | Deposit Policy |
| customer_type | Customer Category |
| adr | Average Daily Rate |
| reservation_status | Final Booking Status |

---

## 10. Data Quality Requirements

The following data quality checks must be performed before analysis:

### Completeness

- Identify missing values.
- Assess null-value percentages.

### Consistency

- Verify data formats.
- Standardize categorical values.

### Uniqueness

- Identify duplicate records.
- Remove duplicate entries where necessary.

### Validity

- Validate numerical ranges.
- Verify date fields.

### Accuracy

- Identify data-entry anomalies.
- Review unusual booking values.

---

## 11. Data Cleaning Requirements

The following preprocessing activities will be performed:

### Missing Value Treatment

- Handle null values appropriately.
- Replace missing children values with zero where applicable.

### Duplicate Removal

- Detect and remove duplicate records.

### Data Type Validation

- Verify all numerical and date fields.

### Privacy Compliance

The following Personally Identifiable Information (PII) fields will be removed:

- Name
- Email
- Phone Number
- Credit Card Information

### Data Transformation

- Create derived metrics where required.
- Group lead times into categories.
- Create cancellation rate measures.

---

## 12. Analysis Requirements

The analysis phase should include:

### Descriptive Analysis

- Total bookings
- Total cancellations
- Cancellation rate
- Average Daily Rate (ADR)

### Hotel Analysis

- Cancellation rate by hotel type
- Revenue comparison by hotel type

### Pricing Analysis

- ADR comparison
- ADR versus cancellations

### Customer Analysis

- Customer type distribution
- Market segment performance
- Distribution channel performance

### Time Analysis

- Monthly reservations
- Monthly cancellations
- Seasonal trends

### Operational Analysis

- Lead-time analysis
- Waiting-list analysis
- Booking changes analysis

---

## 13. Key Performance Indicators (KPIs)

The dashboard should include the following KPIs:

### Reservation KPIs

- Total Bookings
- Total Cancelled Bookings
- Cancellation Rate (%)

### Revenue KPIs

- Average Daily Rate (ADR)
- Estimated Revenue Loss

### Customer KPIs

- Top Market Segment
- Top Distribution Channel

### Operational KPIs

- Average Lead Time
- Average Length of Stay

---

## 14. Power BI Dashboard Requirements

### Dashboard Page 1: Executive Overview

Visualizations:

- KPI Cards
- Monthly Booking Trend
- Monthly Cancellation Trend
- Hotel Type Comparison

### Dashboard Page 2: Customer Analysis

Visualizations:

- Customer Type Breakdown
- Market Segment Analysis
- Distribution Channel Analysis

### Dashboard Page 3: Revenue Analysis

Visualizations:

- ADR Trend
- ADR by Hotel Type
- Revenue Loss Analysis

### Dashboard Page 4: Cancellation Drivers

Visualizations:

- Lead Time Analysis
- Waiting List Analysis
- Deposit Type Analysis
- Cancellation Heatmap

---

## 15. Expected Deliverables

### Data Deliverables

- Cleaned Dataset
- Processed Dataset

### SQL Deliverables

- Data Cleaning Scripts
- Exploratory Data Analysis Queries
- Business Insight Queries

### Power BI Deliverables

- Interactive Dashboard (.pbix)
- Dashboard Screenshots

### Documentation Deliverables

- Project Requirements Document
- Data Dictionary
- Methodology Document
- Findings and Recommendations Report

### Presentation Deliverables

- Executive Presentation Deck

---

## 16. Expected Outcomes

Upon completion, the project should:

- Identify major cancellation drivers.
- Quantify revenue loss caused by cancellations.
- Highlight high-risk customer segments.
- Provide insights into pricing behavior.
- Support data-driven decision-making.
- Improve reservation management strategies.
- Increase occupancy rates and revenue potential.

---

## 17. Success Criteria

The project will be considered successful if it:

- Clearly identifies the factors driving cancellations.
- Provides measurable business insights.
- Supports management decision-making.
- Delivers a professional Power BI dashboard.
- Produces actionable recommendations.
- Demonstrates an end-to-end analytics workflow suitable for a professional data analytics portfolio.

---

## Author

Charles Akintola Walton

### Tools Used

- SQL
- Power BI
- Microsoft Excel
- GitHub

### Project Type

End-to-End Data Analytics Project

### Domain

Hospitality Analytics