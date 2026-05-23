# Data Quality Assessment Report

# Hotel Booking Cancellation Analysis

---

## Overview

This report summarizes the data quality assessment performed on the Hotel Booking Demand Dataset prior to data cleaning and exploratory data analysis.

The purpose of this assessment was to evaluate dataset completeness, consistency, and suitability for business analysis.

---

# Dataset Summary

| Metric | Value |
|----------|---------|
| Total Records | 44,480 |
| Total Columns | 32 |
| Analysis Period | 2015 – 2017 |
| Hotel Types | Resort Hotel, City Hotel |

---

# Completeness Assessment

The dataset was evaluated for missing values across key business fields.

| Column | Record Count |
|----------|-------------|
| Total Rows | 44,480 |
| Children | 44,480 |
| Country | 44,480 |
| Agent | 44,480 |
| Company | 44,490 |

### Findings

- No significant missing values were identified in the primary analytical fields.
- Customer, booking, and pricing information were sufficiently complete for analysis.
- The dataset was considered suitable for business intelligence reporting and dashboard development.

### Assessment Result

✅ Data Completeness: Acceptable

---

# Consistency Assessment

Data structure and formatting were reviewed across categorical and numerical variables.

### Variables Reviewed

- Hotel Type
- Market Segment
- Distribution Channel
- Customer Type
- Deposit Type
- Reservation Status

### Findings

- Categorical values were consistently formatted.
- No major inconsistencies were observed across booking categories.
- Date fields aligned with the expected analysis period.

### Assessment Result

✅ Data Consistency: Acceptable

---

# Validity Assessment

Key numerical variables were reviewed for validity.

### Variables Assessed

- Lead Time
- ADR (Average Daily Rate)
- Days in Waiting List
- Number of Adults
- Number of Children

### Findings

- Numerical values fell within expected operational ranges.
- No invalid date values were identified.
- Data was suitable for further analysis.

### Assessment Result

✅ Data Validity: Acceptable

---

# Duplicate Assessment

Duplicate booking records were evaluated during the exploration phase.

### Findings

- No material duplicate records were identified that would significantly affect analysis results.
- The dataset maintained acceptable record uniqueness.

### Assessment Result

✅ Record Uniqueness: Acceptable

---

# Privacy Assessment

The dataset contained Personally Identifiable Information (PII) fields.

### Sensitive Columns Identified

- Name
- Email
- Phone Number
- Credit Card

### Action Taken

These fields were excluded from analysis and dashboard reporting.

### Assessment Result

✅ Privacy Compliance Achieved

---

# Data Quality Conclusion

The dataset demonstrated strong overall quality and was deemed suitable for exploratory data analysis, business intelligence reporting, and dashboard development.

### Key Outcomes

- Complete booking information available.
- Minimal data quality concerns.
- Consistent categorical values.
- Valid numerical ranges.
- Privacy-sensitive information identified and removed.

The dataset was approved for the subsequent stages of data cleaning, exploratory analysis, and business insight generation.

---

## Author

Charles Akintola Walton

### Project

Hotel Booking Cancellation Analysis