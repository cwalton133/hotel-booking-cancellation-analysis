# Data Dictionary

# Hotel Booking Cancellation Analysis

---

## Dataset Overview

### Dataset Name

Hotel Booking Demand Dataset

### Description

This dataset contains booking information for Resort Hotels and City Hotels between 2015 and 2017. It includes customer demographics, booking details, stay information, pricing data, booking channels, and cancellation status.

### Primary Objective

The dataset is used to identify factors that influence hotel booking cancellations and provide actionable business recommendations to improve revenue and occupancy rates.

### Total Records

119,390 Rows

### Total Features

32 Columns (before data cleaning)

---

# Column Definitions

| Column Name | Data Type | Description |
|-------------|------------|-------------|
| hotel | VARCHAR | Type of hotel (Resort Hotel or City Hotel) |
| is_canceled | INTEGER | Booking cancellation status (0 = Not Cancelled, 1 = Cancelled) |
| lead_time | INTEGER | Number of days between booking date and arrival date |
| arrival_date_year | INTEGER | Year of guest arrival |
| arrival_date_month | VARCHAR | Month of guest arrival |
| arrival_date_week_number | INTEGER | Week number of guest arrival |
| arrival_date_day_of_month | INTEGER | Day of month of guest arrival |
| stays_in_weekend_nights | INTEGER | Number of weekend nights booked |
| stays_in_week_nights | INTEGER | Number of weekday nights booked |
| adults | INTEGER | Number of adults included in reservation |
| children | INTEGER | Number of children included in reservation |
| babies | INTEGER | Number of babies included in reservation |
| meal | VARCHAR | Type of meal package booked |
| country | VARCHAR | Customer's country of origin |
| market_segment | VARCHAR | Market segment through which booking was made |
| distribution_channel | VARCHAR | Booking distribution channel |
| is_repeated_guest | INTEGER | Indicates whether customer is a returning guest (0 = No, 1 = Yes) |
| previous_cancellations | INTEGER | Number of previous cancellations made by customer |
| previous_bookings_not_canceled | INTEGER | Number of previous successful bookings |
| reserved_room_type | VARCHAR | Room type originally reserved |
| assigned_room_type | VARCHAR | Room type assigned at check-in |
| booking_changes | INTEGER | Number of changes made to reservation |
| deposit_type | VARCHAR | Deposit policy associated with booking |
| agent | INTEGER | Travel agent identifier |
| company | INTEGER | Company identifier associated with booking |
| days_in_waiting_list | INTEGER | Number of days booking remained on waiting list |
| customer_type | VARCHAR | Customer classification |
| adr | DECIMAL | Average Daily Rate (average revenue per occupied room per day) |
| required_car_parking_spaces | INTEGER | Number of parking spaces requested |
| total_of_special_requests | INTEGER | Total number of special requests made by guest |
| reservation_status | VARCHAR | Final reservation outcome |
| reservation_status_date | DATE | Date reservation status was last updated |

---

# Detailed Feature Description

---

## hotel

### Description

Identifies the hotel category.

### Values

| Value | Meaning |
|---------|---------|
| Resort Hotel | Resort Property |
| City Hotel | Urban/City Property |

### Business Importance

Allows comparison of booking behavior and cancellation patterns across hotel types.

---

## is_canceled

### Description

Target variable indicating whether a booking was canceled.

### Values

| Value | Meaning |
|---------|---------|
| 0 | Not Cancelled |
| 1 | Cancelled |

### Business Importance

Primary metric used to measure cancellation rates.

---

## lead_time

### Description

Number of days between booking date and arrival date.

### Example

```text
Booking Date: January 1
Arrival Date: March 1

Lead Time = 59 Days
```

### Business Importance

Long lead times often increase cancellation probability.

---

## arrival_date_year

### Description

Year in which the customer arrived.

### Values

```text
2015
2016
2017
```

### Business Importance

Supports trend analysis over time.

---

## arrival_date_month

### Description

Month in which customer arrives.

### Business Importance

Useful for identifying seasonality and peak travel periods.

---

## stays_in_weekend_nights

### Description

Number of weekend nights included in booking.

### Business Importance

Helps evaluate leisure travel patterns.

---

## stays_in_week_nights

### Description

Number of weekday nights included in booking.

### Business Importance

Useful for analyzing business versus leisure travelers.

---

## adults

### Description

Number of adults in reservation.

### Business Importance

Customer segmentation and occupancy planning.

---

## children

### Description

Number of children included in reservation.

### Business Importance

Supports family traveler analysis.

---

## babies

### Description

Number of babies included in reservation.

### Business Importance

Further segmentation of family bookings.

---

## meal

### Description

Meal package selected during booking.

### Common Values

| Value | Description |
|---------|-------------|
| BB | Bed & Breakfast |
| HB | Half Board |
| FB | Full Board |
| SC | Self Catering |

### Business Importance

Supports ancillary revenue analysis.

---

## country

### Description

Country of origin of guest.

### Business Importance

Identifies key source markets and international demand.

---

## market_segment

### Description

Booking acquisition source.

### Common Values

| Segment |
|----------|
| Online TA |
| Offline TA/TO |
| Direct |
| Corporate |
| Groups |
| Aviation |

### Business Importance

Critical for understanding cancellation behavior by customer acquisition channel.

---

## distribution_channel

### Description

Method through which reservation was made.

### Common Values

| Channel |
|------------|
| Direct |
| Corporate |
| TA/TO |
| GDS |

### Business Importance

Supports channel performance evaluation.

---

## is_repeated_guest

### Description

Indicates whether guest has stayed before.

### Values

| Value | Meaning |
|---------|---------|
| 0 | New Guest |
| 1 | Returning Guest |

### Business Importance

Useful for customer loyalty analysis.

---

## previous_cancellations

### Description

Number of previous reservations canceled by guest.

### Business Importance

Strong indicator of future cancellation behavior.

---

## previous_bookings_not_canceled

### Description

Number of successfully completed reservations.

### Business Importance

Measures customer loyalty and reliability.

---

## reserved_room_type

### Description

Room category initially booked.

### Business Importance

Analyzes customer room preferences.

---

## assigned_room_type

### Description

Room category actually assigned.

### Business Importance

Measures operational adjustments and upgrades.

---

## booking_changes

### Description

Number of modifications made to reservation.

### Business Importance

Frequent modifications may indicate higher cancellation risk.

---

## deposit_type

### Description

Deposit policy applied to reservation.

### Common Values

| Deposit Type | Meaning |
|--------------|----------|
| No Deposit | No advance payment required |
| Refundable | Deposit can be refunded |
| Non Refund | Deposit cannot be refunded |

### Business Importance

Important factor affecting cancellation rates.

---

## agent

### Description

Travel agent identification number.

### Business Importance

Used to evaluate agent performance and cancellation behavior.

### Data Cleaning Note

May contain null values.

---

## company

### Description

Company identifier associated with corporate bookings.

### Business Importance

Useful for analyzing corporate customers.

### Data Cleaning Note

May contain significant missing values.

---

## days_in_waiting_list

### Description

Number of days reservation spent on waiting list.

### Business Importance

Long waiting periods may increase cancellations.

---

## customer_type

### Description

Customer classification.

### Common Values

| Customer Type |
|---------------|
| Transient |
| Contract |
| Group |
| Transient-Party |

### Business Importance

Supports customer behavior analysis.

---

## adr (Average Daily Rate)

### Description

Average revenue earned per occupied room per day.

### Formula

ADR = Room Revenue ÷ Rooms Sold

### Business Importance

Critical revenue performance metric.

---

## required_car_parking_spaces

### Description

Number of parking spaces requested.

### Business Importance

Supports facility planning and customer profiling.

---

## total_of_special_requests

### Description

Total number of special requests submitted by customer.

### Examples

- Extra bed
- Early check-in
- Late check-out
- Airport transfer

### Business Importance

May indicate higher customer engagement and commitment.

---

## reservation_status

### Description

Final booking outcome.

### Values

| Status | Meaning |
|-----------|-----------|
| Check-Out | Guest completed stay |
| Canceled | Booking canceled |
| No-Show | Guest failed to arrive |

### Business Importance

Used to analyze booking outcomes.

---

## reservation_status_date

### Description

Date when reservation status was last updated.

### Business Importance

Useful for cancellation trend analysis.

---

# Columns Removed During Data Cleaning

The following fields contain Personally Identifiable Information (PII) and will be removed before analysis:

| Column | Reason |
|----------|----------|
| name | Personal Information |
| email | Personal Information |
| phone-number | Personal Information |
| credit_card | Sensitive Financial Information |

---

# Target Variable

## is_canceled

### Prediction Goal

Determine which booking characteristics are most strongly associated with cancellation behavior.

### Business Objective

Reduce cancellation rates and improve revenue generation through data-driven decision-making.

---

# Data Governance Notes

### Privacy Compliance

PII fields must not be included in reports, dashboards, or published datasets.

### Data Integrity

All transformations performed during cleaning should be documented and reproducible.

### Version Control

- Raw data remains unchanged.
- All modifications occur within processed datasets.
- SQL scripts should document every transformation.

---

# Author

Charles Akintola Walton

### Project

Hotel Booking Cancellation Analysis

### Tools

- SQL
- Power BI
- Excel
- GitHub

### Version

1.0