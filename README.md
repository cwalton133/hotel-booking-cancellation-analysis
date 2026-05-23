# Hotel Booking Cancellation Analysis
### Identifying Revenue Loss Drivers and Reducing Reservation Cancellations Using SQL & Power BI

![SQL](https://img.shields.io/badge/SQL-Analysis-blue?style=for-the-badge)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-yellow?style=for-the-badge)
![Data Analytics](https://img.shields.io/badge/Data-Analytics-green?style=for-the-badge)
![CRISP-DM](https://img.shields.io/badge/Framework-CRISP--DM-orange?style=for-the-badge)
![GitHub](https://img.shields.io/badge/Portfolio-Project-black?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

---

# Project Overview

The hospitality industry relies heavily on reservation forecasting and occupancy management to maximize profitability. Booking cancellations can significantly impact revenue generation, staffing requirements, inventory management, and operational planning.

This project analyzes hotel booking data between 2015 and 2017 to identify the primary drivers of reservation cancellations and provide actionable business recommendations for reducing cancellation rates.

Using SQL for data exploration and analysis and Power BI for visualization, this project demonstrates an end-to-end Business Intelligence workflow following the CRISP-DM methodology.

---

# Business Problem

Lagoon Island Lounge and Resort Hotel experienced increasing booking cancellation rates over time, resulting in:

- Reduced room occupancy
- Revenue leakage
- Poor demand forecasting
- Inefficient resource allocation
- Increased operational uncertainty

Management requires data-driven insights to understand:

- Why customers cancel reservations
- Which customer groups are most likely to cancel
- How pricing influences cancellations
- Which booking channels contribute most to cancellations
- How cancellation rates can be reduced

---

# Project Objectives

The primary objectives of this analysis are:

- Identify factors influencing booking cancellations.
- Measure the impact of cancellations on revenue.
- Analyze customer booking behavior.
- Evaluate booking channels and market segments.
- Investigate pricing-related cancellation patterns.
- Develop actionable recommendations.
- Build an executive Power BI dashboard for decision-making.

---

# CRISP-DM Methodology

This project follows the Cross Industry Standard Process for Data Mining (CRISP-DM).

## 1. Business Understanding

### Problem Statement

Lagoon Island Lounge and Resort Hotel has experienced increasing reservation cancellations, reducing occupancy rates and revenue generation.

### Business Goals

- Reduce cancellation rates.
- Improve booking retention.
- Increase occupancy rates.
- Improve revenue forecasting.

### Research Questions

1. What factors influence hotel reservation cancellations?
2. How can cancellation rates be reduced?
3. How can pricing and promotional decisions be improved?

---

## 2. Data Understanding

### Dataset

Hotel Booking Demand Dataset

### Analysis Period

2015 – 2017

### Total Records

44,480 Bookings

### Hotel Types

- Resort Hotel
- City Hotel

### Key Features

| Category | Variables |
|-----------|------------|
| Booking Information | Lead Time, Booking Changes |
| Customer Information | Country, Customer Type |
| Revenue Information | ADR |
| Reservation Details | Market Segment, Distribution Channel |
| Target Variable | is_canceled |

### Documentation

- documentation/Data_Dictionary.md
- reports/data_quality_assessment.md

---

## 3. Data Preparation

### Data Quality Assessment

The dataset was evaluated for:

- Missing values
- Duplicate records
- Data consistency
- Data validity
- Privacy compliance

### Data Cleaning Activities

- Verified data completeness
- Reviewed duplicate records
- Validated data types
- Removed PII fields:
  - Name
  - Email
  - Phone Number
  - Credit Card

### Deliverables

```text
sql/01_data_exploration.sql
sql/02_data_cleaning.sql
reports/data_quality_assessment.md
```

---

## 4. Exploratory Data Analysis (EDA)

EDA was conducted to understand booking behavior and cancellation patterns.

### Areas Analyzed

- Cancellation rates
- Hotel type performance
- ADR impact
- Lead time behavior
- Market segments
- Distribution channels
- Seasonal trends
- Waiting list behavior

### Deliverables

```text
sql/03_eda_analysis.sql
sql/04_business_questions.sql
sql/05_final_queries.sql
```

---

## 5. Modeling & Business Intelligence

Instead of predictive modeling, this project focuses on descriptive and diagnostic analytics using SQL and Power BI.

### Dashboard Pages

1. Executive Overview
2. Customer Analysis
3. Revenue Analysis
4. Cancellation Drivers

---

## 6. Evaluation

Business recommendations were evaluated against:

- Revenue impact
- Customer behavior
- Booking retention
- Operational feasibility

---

# Key Findings

## KPI Summary

| KPI | Value |
|---------|---------|
| Total Bookings | 44,480 |
| Total Cancellations | 12,600 |
| Cancellation Rate | 28.33% |
| Hotel Types Analyzed | 2 |
| Analysis Period | 2015–2017 |

---

## Finding 1: High Cancellation Rate

28.33% of all reservations were cancelled.

### Business Impact

Nearly one in three bookings did not convert into completed stays, creating significant revenue leakage.

---

## Finding 2: City Hotels Experience More Cancellations

| Hotel Type | Cancellation Rate |
|------------|-------------------|
| Resort Hotel | 27.76% |
| City Hotel | 33.44% |

### Insight

City Hotels experience higher cancellation rates than Resort Hotels.

---

## Finding 3: Higher Prices Lead to More Cancellations

| Booking Status | Average ADR |
|---------------|-------------|
| Completed Booking | 90.55 |
| Cancelled Booking | 104.83 |

### Insight

Customers become increasingly price-sensitive as room rates rise.

### Hypothesis Result

✅ Supported

---

## Finding 4: Long Lead Times Increase Cancellation Risk

| Lead Time Group | Cancellations |
|----------------|--------------|
| 0–30 Days | 2,390 |
| 31–90 Days | 3,531 |
| 91–180 Days | 3,451 |
| 180+ Days | 3,228 |

### Insight

Advance reservations carry a higher cancellation risk.

---

## Finding 5: Online Travel Agents Drive Most Cancellations

| Market Segment | Cancellations |
|---------------|--------------|
| Online TA | 6,546 |
| Offline TA/TO | 1,560 |
| Groups | 3,151 |

### Insight

Online Travel Agencies generate both the highest booking volume and highest cancellation volume.

### Hypothesis Result

❌ Not Supported

Most bookings originate from Online Travel Agents rather than Offline Travel Agents.

---

## Finding 6: Seasonal Demand Influences Cancellations

Highest cancellation volumes occurred during:

- August
- July
- September

### Insight

Peak travel periods create more booking modifications and cancellations.

---

# Recommendations

## Dynamic Pricing Strategy

Implement demand-based pricing models to reduce price-related cancellations.

### Expected Benefit

Improved booking retention.

---

## Promote Direct Bookings

Offer:

- Loyalty rewards
- Member discounts
- Direct-booking incentives

### Expected Benefit

Reduced OTA dependency.

---

## Improve Cancellation Policies

Introduce:

- Partial deposits
- Tiered cancellation penalties

### Expected Benefit

Reduced cancellation risk.

---

## Lead-Time Optimization

Encourage booking confirmation closer to arrival dates.

### Expected Benefit

More reliable occupancy forecasting.

---

## Seasonal Retention Campaigns

Develop targeted promotions during peak-demand periods.

### Expected Benefit

Reduced seasonal cancellations.

---

# Power BI Dashboard

## Executive Overview

![Executive Overview](dashboard/dashboard_screenshots/executive_overview.png)

---

## Customer Analysis

![Customer Analysis](dashboard/dashboard_screenshots/customer_behavior.png)

---

## Revenue Analysis

![Revenue Analysis](dashboard/dashboard_screenshots/revenue_analysis.png)

---

## Cancellation Drivers

![Cancellation Drivers](dashboard/dashboard_screenshots/cancellation_drivers.png)

---

# Repository Structure

```text
hotel-booking-cancellation-analysis/
│
├── README.md
│
├── data/
│   ├── raw/
│   │   └── hotel_bookings.csv
│   │
│   ├── processed/
│   │   ├── cleaned_hotel_bookings.csv
│   │   └── transformed_hotel_bookings.csv
│
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_eda_analysis.sql
│   ├── 04_business_questions.sql
│   └── 05_final_queries.sql
│
├── dashboard/
│   ├── Hotel_Cancellation_Dashboard.pbix
│   └── dashboard_screenshots/
│       ├── executive_overview.png
│       ├── customer_behavior.png
│       ├── revenue_analysis.png
│       └── cancellation_drivers.png
│
├── reports/
│   ├── data_quality_assessment.md
│   ├── Executive_Summary.pdf
│   └── Hotel_Cancellation_Analysis_Report.pdf
│
├── slides/
│   └── Hotel_Booking_Cancellation_Presentation.pptx
│
├── documentation/
│   ├── Project_Requirements.md
│   ├── Data_Dictionary.md
│   ├── Methodology.md
│   └── Findings.md
│
└── assets/
    └── screenshots/
```

---

# Tools & Technologies

| Category | Tool |
|-----------|------|
| Data Storage | CSV |
| Data Cleaning | SQL |
| Data Analysis | SQL |
| Visualization | Power BI |
| Documentation | Markdown |
| Version Control | Git & GitHub |

---

# Skills Demonstrated

### Data Analytics

- Data Cleaning
- Exploratory Data Analysis
- Business Analysis
- KPI Development
- Data Storytelling

### SQL

- Aggregations
- Window Functions
- CASE Statements
- CTEs
- Business Queries

### Power BI

- Data Modeling
- DAX Measures
- Interactive Dashboards
- KPI Cards
- Drill-through Reporting

### Business Intelligence

- Revenue Analysis
- Customer Segmentation
- Channel Performance Analysis
- Operational Analytics

---

# Future Enhancements

Potential extensions include:

- Predictive Cancellation Modeling
- Customer Churn Analysis
- Revenue Forecasting
- Occupancy Forecasting
- Machine Learning Classification Models

---

# Author

## Charles Akintola Walton

Data Analyst | Business Intelligence Analyst | Python Developer

### Connect

- LinkedIn: [Add Your LinkedIn URL]
- GitHub: [Add Your GitHub URL]
- Portfolio: [Add Portfolio URL]

---

# License

This project is intended for educational, portfolio, and professional demonstration purposes.