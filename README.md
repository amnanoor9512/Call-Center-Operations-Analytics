# Call Center Performance & Operations Analytics

## Project Overview

This project analyzes call center performance data to identify operational trends, customer service issues, and queue-level performance differences.

The analysis was performed using Excel, MySQL, Python, and Power BI.

## Business Problem

Call centers need to monitor operational KPIs such as call volume, handle time, waiting time, first call resolution, customer satisfaction, abandoned calls, and escalations.

This project answers questions such as:

- Which queues handle the highest number of calls?
- Which queues have the highest average handle time?
- Where are customers waiting the longest?
- Which queues have the highest first-call resolution?
- Which queues have the highest customer satisfaction?
- Which queues have the highest abandonment rate?
- Which queues have the highest escalation rate?

## Dataset

The dataset contains 1,141 call-center records and 10 columns.

Main fields include:

- Date
- Agent ID
- Queue Name
- Calls Handled
- Average Handle Time
- Average Wait Time
- First Call Resolution
- CSAT Score
- Calls Abandoned
- Escalations

## Data Cleaning

The dataset was checked for:

- Missing values
- Duplicate records
- Data types
- Invalid values
- Queue-name consistency
- Agent ID consistency
- Date validity

One missing value was found in `calls_abandoned` and one in `escalations`. These values were retained as blank because the actual values could not be determined.

No duplicate records were identified.

## Tools Used

- Excel
- MySQL
- Python
- Pandas
- NumPy
- Matplotlib
- Power BI

## Analysis

### Excel

Excel was used for:

- Data quality checks
- KPI calculations
- Queue-level analysis
- Business insights
- Charts

### SQL

MySQL was used for:

- Data validation
- KPI calculations
- Queue-level analysis
- Business questions

### Python

Python was used for:

- Data loading
- Data cleaning
- Exploratory data analysis
- KPI calculations
- Queue-level analysis
- Data visualization

### Power BI

Power BI was used to create an interactive dashboard containing:

- Total Calls Handled
- Average Handle Time
- Average Wait Time
- First Call Resolution
- CSAT
- Abandoned Calls
- Escalations
- Abandonment Rate
- Escalation Rate

## Key Findings

- Sales handled the highest number of calls: 11,510.
- Sales had the highest average handle time: 526.87 seconds.
- General Enquiry had the highest average wait time: 172.14 seconds.
- Retention had the highest average first-call resolution: 70.80%.
- Technical Support had the highest average CSAT: 3.79.
- Billing had the highest abandonment rate: 7.39%.
- General Enquiry had the highest escalation rate: 5.07%.

## Overall KPIs

| KPI | Value |
|---|---:|
| Total Calls Handled | 73,014 |
| Average Handle Time | 499.63 sec |
| Average Wait Time | 160.57 sec |
| Average FCR | 70.12% |
| Average CSAT | 3.75 |
| Total Abandoned Calls | 5,363 |
| Total Escalations | 3,412 |
| Abandonment Rate | 6.84% |
| Escalation Rate | 4.67% |

## Business Recommendations

Based on the analysis:

1. Investigate the high abandonment rate in Billing.
2. Review waiting-time drivers in General Enquiry.
3. Investigate the high escalation rate in General Enquiry.
4. Study practices in Retention that may support higher FCR.
5. Examine workload and handling processes in Sales because of its high call volume and handle time.

## Project Structure

```text
Call-Center-Operations-Analytics/
│
├── data/
├── excel/
├── sql/
├── python/
├── powerbi/
├── screenshots/
├── documentation/
└── README.md


## Conclusion

This project demonstrates an end-to-end data analytics workflow, from data cleaning and validation to SQL analysis, Python-based exploratory analysis, and interactive Power BI visualization.

The analysis identified differences in call volume, handle time, waiting time, first-call resolution, customer satisfaction, abandonment, and escalation across call center queues. These findings can help operations teams identify areas that may require further investigation and improvement.