# Methodology

# Hotel Booking Cancellation Analysis

---

## 1. Introduction

This document outlines the methodology used to analyze hotel booking cancellations for Lagoon Island Lounge and Resort Hotel. The project follows the standard Data Analytics Lifecycle, beginning with business understanding and ending with data-driven recommendations supported by interactive dashboards.

The methodology ensures that the analysis is transparent, reproducible, and aligned with business objectives.

---

# 2. Analytics Framework

The project follows a five-stage analytics process:

1. Business Understanding
2. Data Collection and Understanding
3. Data Cleaning and Preparation
4. Exploratory Data Analysis (EDA)
5. Data Visualization and Reporting

---

# 3. Business Understanding

## Business Problem

Lagoon Island Lounge and Resort Hotel has experienced increasing booking cancellation rates between 2015 and 2017.

High cancellation rates negatively impact:

- Revenue generation
- Room occupancy
- Demand forecasting
- Operational planning
- Resource allocation

The hotel management team requires actionable insights to understand cancellation drivers and improve booking retention.

---

## Business Objectives

The project seeks to:

- Identify key drivers of booking cancellations.
- Measure the impact of cancellations on business performance.
- Analyze customer booking behavior.
- Evaluate pricing-related cancellation patterns.
- Support strategic decision-making through data insights.

---

# 4. Research Questions

The analysis is designed to answer the following questions:

### RQ1

What factors influence hotel reservation cancellations?

### RQ2

How can cancellation rates be reduced?

### RQ3

How can pricing and promotional strategies be improved using booking data?

### RQ4

Which customer segments contribute most to cancellations?

### RQ5

How do booking channels influence cancellation behavior?

---

# 5. Hypothesis Testing

The following hypotheses guide the analysis:

## Hypothesis 1

Higher room prices lead to increased booking cancellations.

### Test Variables

- ADR (Average Daily Rate)
- is_canceled

---

## Hypothesis 2

Long waiting-list periods increase cancellation rates.

### Test Variables

- days_in_waiting_list
- is_canceled

---

## Hypothesis 3

Most reservations originate from offline travel agents.

### Test Variables

- market_segment
- distribution_channel

---

# 6. Data Collection

## Data Source

Hotel Booking Demand Dataset

## Data Period

2015 – 2017

## Dataset Characteristics

The dataset contains historical reservation records from:

- Resort Hotels
- City Hotels

The dataset includes:

- Reservation information
- Customer characteristics
- Pricing details
- Booking channels
- Cancellation outcomes

---

# 7. Data Understanding

The dataset contains information related to:

## Customer Information

- Country
- Customer Type
- Repeat Guest Status

## Reservation Information

- Lead Time
- Booking Changes
- Waiting List Duration

## Stay Information

- Arrival Date
- Length of Stay
- Number of Guests

## Revenue Information

- ADR
- Deposit Type

## Booking Outcomes

- Cancellation Status
- Reservation Status

---

# 8. Data Cleaning Methodology

Before analysis, the dataset undergoes a structured cleaning process.

---

## Step 1: Data Inspection

The initial dataset is reviewed to understand:

- Number of rows
- Number of columns
- Data types
- Missing values
- Duplicate records

### SQL Activities

```sql
SELECT COUNT(*)
FROM hotel_bookings;
```

```sql
SELECT *
FROM hotel_bookings
LIMIT 10;
```

---

## Step 2: Missing Value Analysis

Missing values are identified and evaluated.

### Fields Reviewed

- children
- country
- agent
- company

### Objective

Determine whether missing values should be:

- Replaced
- Retained
- Removed

---

## Step 3: Duplicate Detection

Duplicate records are identified using key booking attributes.

### Objective

Ensure each booking record is unique.

### SQL Method

```sql
ROW_NUMBER() OVER()
```

---

## Step 4: Data Type Validation

All fields are validated to ensure correct data types.

### Examples

| Field | Expected Type |
|---------|--------------|
| lead_time | Integer |
| adr | Decimal |
| reservation_status_date | Date |

---

## Step 5: Outlier Assessment

Numerical variables are reviewed for unusual values.

### Variables Reviewed

- ADR
- Lead Time
- Waiting List Days

### Objective

Identify abnormal booking behavior that could distort analysis.

---

## Step 6: Data Privacy Compliance

Personally identifiable information (PII) is removed.

### Columns Removed

- name
- email
- phone-number
- credit_card

### Reason

Compliance with data privacy and ethical analytics practices.

---

# 9. Data Transformation

Several business-focused transformations are created to improve analysis.

---

## Lead Time Groups

Lead times are categorized into:

| Category | Days |
|------------|------|
| Short-Term | 0–30 |
| Medium-Term | 31–90 |
| Long-Term | 91–180 |
| Extended | 180+ |

### Purpose

Evaluate cancellation patterns across booking horizons.

---

## Cancellation Rate Metric

A cancellation rate KPI is created.

### Formula

```text
Cancellation Rate =
Cancelled Bookings / Total Bookings
```

### Purpose

Measure booking retention performance.

---

## Revenue Impact Metric

Estimated lost revenue is calculated.

### Formula

```text
Estimated Revenue Loss =
ADR × Cancelled Bookings
```

### Purpose

Quantify financial impact of cancellations.

---

# 10. Exploratory Data Analysis (EDA)

EDA is performed to uncover patterns, trends, and relationships within the data.

---

## Descriptive Analysis

Key metrics include:

- Total Bookings
- Total Cancellations
- Cancellation Rate
- Average Daily Rate

---

## Hotel-Level Analysis

### Questions

- Which hotel type has the highest cancellation rate?
- Which hotel type generates more bookings?

### Dimensions

- Resort Hotel
- City Hotel

---

## Pricing Analysis

### Questions

- Do higher room prices increase cancellations?
- How does ADR vary across hotel types?

### Metrics

- ADR
- Cancellation Rate

---

## Customer Analysis

### Questions

- Which customer types cancel most frequently?
- Which market segments generate the most bookings?

### Dimensions

- Customer Type
- Market Segment
- Distribution Channel

---

## Time-Series Analysis

### Questions

- Which months experience the highest cancellations?
- Are there seasonal booking patterns?

### Dimensions

- Month
- Year

---

## Operational Analysis

### Questions

- Does lead time affect cancellations?
- Does waiting-list duration influence customer behavior?

### Metrics

- Lead Time
- Days in Waiting List

---

# 11. Business Insight Generation

Insights are developed by connecting analytical findings to business outcomes.

Examples include:

### Revenue Insights

- Impact of cancellations on revenue.

### Customer Insights

- Identification of high-risk customer groups.

### Channel Insights

- Evaluation of booking channels with high cancellation rates.

### Pricing Insights

- Relationship between room pricing and booking retention.

---

# 12. Dashboard Development Methodology

Power BI is used to convert analytical findings into interactive business dashboards.

---

## Dashboard Design Principles

The dashboard should:

- Be easy to understand.
- Focus on business decision-making.
- Highlight key performance indicators.
- Support drill-down analysis.

---

## Dashboard Pages

### Page 1: Executive Overview

Purpose:

Provide a high-level summary of hotel performance.

Visuals:

- KPI Cards
- Trend Charts
- Hotel Comparison Charts

---

### Page 2: Customer Analysis

Purpose:

Understand customer booking behavior.

Visuals:

- Market Segment Analysis
- Customer Type Breakdown
- Distribution Channel Analysis

---

### Page 3: Revenue Analysis

Purpose:

Measure financial performance.

Visuals:

- ADR Trends
- Revenue Impact Analysis
- Hotel Revenue Comparison

---

### Page 4: Cancellation Drivers

Purpose:

Identify root causes of cancellations.

Visuals:

- Lead Time Analysis
- Waiting List Analysis
- Deposit Type Analysis
- Cancellation Heatmap

---

# 13. Recommendation Development

Recommendations are based on analytical findings.

Potential recommendation categories include:

### Pricing Strategy

- Dynamic pricing models
- Seasonal pricing adjustments

### Booking Policy

- Deposit requirements
- Flexible cancellation policies

### Customer Retention

- Loyalty incentives
- Direct booking promotions

### Operational Improvements

- Waiting-list management
- Reservation optimization

---

# 14. Validation and Quality Assurance

The analysis undergoes validation to ensure:

- Data accuracy
- Query accuracy
- Dashboard consistency
- Business relevance

Validation activities include:

- SQL result verification
- KPI reconciliation
- Dashboard testing
- Insight review

---

# 15. Deliverables

The project produces the following outputs:

## Data Deliverables

- Cleaned Dataset
- Processed Dataset

## SQL Deliverables

- Data Cleaning Scripts
- EDA Queries
- Business Analysis Queries

## Power BI Deliverables

- Interactive Dashboard
- Dashboard Screenshots

## Documentation Deliverables

- Project Requirements
- Data Dictionary
- Methodology
- Findings and Recommendations

## Presentation Deliverables

- Executive Presentation Deck

---

# 16. Limitations

The analysis is subject to the following limitations:

- Data covers only 2015–2017.
- External economic factors are not included.
- Competitor information is unavailable.
- Customer satisfaction data is not provided.
- Results are based solely on historical booking behavior.

---

# 17. Conclusion

This methodology provides a structured approach for identifying hotel booking cancellation drivers and transforming raw booking data into actionable business insights.

By following a systematic process of data cleaning, exploratory analysis, visualization, and recommendation development, the project supports evidence-based decision-making and demonstrates a complete end-to-end data analytics workflow suitable for business stakeholders and portfolio presentation.

---

## Author

Charles Akintola Walton

### Project

Hotel Booking Cancellation Analysis

### Tools

- SQL
- Power BI
- Microsoft Excel
- GitHub

### Methodology Version

1.0