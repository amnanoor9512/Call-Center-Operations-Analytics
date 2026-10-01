-- Call Center Performance & Operations Analytics
-- SQL Analysis
-- Dataset: Call Center Performance
-- Records: 1,141
-- Purpose: Data quality checks, KPI analysis, queue-level analysis,
-- and business question analysis.


INSERT INTO call_center_data (
    date,
    agent_id,
    queue_name,
    calls_handled,
    avg_handle_time_sec,
    avg_wait_time_sec,
    first_call_resolution_pct,
    csat_score,
    calls_abandoned,
    escalations
)
VALUES (
    '2024-03-16',
    'AGT-0095',
    'Complaints',
    52,
    709,
    250,
    0.477,
    4.5,
    NULL,
    NULL
);

SELECT COUNT(*) AS total_records
FROM call_center_data;

SELECT
    COUNT(*) AS missing_abandoned
FROM call_center_data
WHERE calls_abandoned IS NULL;
SELECT COUNT(*) AS missing_escalations
FROM call_center_data
WHERE escalations IS NULL;
SELECT
    date,
    agent_id,
    queue_name,
    calls_handled,
    calls_abandoned
FROM call_center_data
WHERE calls_abandoned IS NULL;
SELECT COUNT(*) AS total_records
FROM call_center_data;
DELETE FROM call_center_data
WHERE date = '2024-03-16'
  AND agent_id = 'AGT-0095'
  AND queue_name = 'Complaints'
  AND calls_handled = 52
  AND avg_handle_time_sec = 709
  AND avg_wait_time_sec = 250
  AND first_call_resolution_pct = 0.477
  AND csat_score = 4.5
  AND calls_abandoned IS NULL
  AND escalations IS NULL
LIMIT 4;
SELECT COUNT(*) AS total_records
FROM call_center_data;

SELECT
    date,
    agent_id,
    queue_name,
    COUNT(*) AS duplicate_count
FROM call_center_data
GROUP BY date, agent_id, queue_name
HAVING COUNT(*) > 1;

SELECT
    SUM(calls_handled) AS total_calls_handled
FROM call_center_data;

SELECT
    ROUND(AVG(avg_handle_time_sec), 2) AS avg_handle_time_sec
FROM call_center_data;

SELECT
    ROUND(AVG(avg_wait_time_sec), 2) AS avg_wait_time_sec
FROM call_center_data;

SELECT
    ROUND(AVG(first_call_resolution_pct) * 100, 2) AS avg_fcr_pct
FROM call_center_data;

SELECT
    ROUND(AVG(csat_score), 2) AS avg_csat_score
FROM call_center_data;

SELECT
    SUM(calls_abandoned) AS total_calls_abandoned
FROM call_center_data;

SELECT
    SUM(escalations) AS total_escalations
FROM call_center_data;

SELECT
    ROUND(
        SUM(calls_abandoned) /
        (SUM(calls_handled) + SUM(calls_abandoned)) * 100,
        2
    ) AS abandonment_rate_pct
FROM call_center_data;

SELECT
    ROUND(
        SUM(escalations) /
        SUM(calls_handled) * 100,
        2
    ) AS escalation_rate_pct
FROM call_center_data;

SELECT
    queue_name,
    SUM(calls_handled) AS total_calls_handled
FROM call_center_data
GROUP BY queue_name
ORDER BY total_calls_handled DESC;

SELECT
    queue_name,
    ROUND(AVG(avg_handle_time_sec), 2) AS avg_handle_time_sec
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_handle_time_sec DESC;

SELECT
    queue_name,
    ROUND(AVG(avg_wait_time_sec), 2) AS avg_wait_time_sec
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_wait_time_sec DESC;  

SELECT
    queue_name,
    ROUND(AVG(first_call_resolution_pct) * 100, 2) AS avg_fcr_pct
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_fcr_pct DESC;

SELECT
    queue_name,
    ROUND(AVG(csat_score), 2) AS avg_csat
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_csat DESC;

SELECT
    queue_name,
    SUM(calls_abandoned) AS total_calls_abandoned
FROM call_center_data
GROUP BY queue_name
ORDER BY total_calls_abandoned DESC;

SELECT
    queue_name,
    SUM(escalations) AS total_escalations
FROM call_center_data
GROUP BY queue_name
ORDER BY total_escalations DESC;

SELECT
    queue_name,
    ROUND(
        SUM(calls_abandoned) /
        (SUM(calls_handled) + SUM(calls_abandoned)) * 100,
        2
    ) AS abandonment_rate_pct
FROM call_center_data
GROUP BY queue_name
ORDER BY abandonment_rate_pct DESC;

SELECT
    queue_name,
    ROUND(
        SUM(escalations) /
        SUM(calls_handled) * 100,
        2
    ) AS escalation_rate_pct
FROM call_center_data
GROUP BY queue_name
ORDER BY escalation_rate_pct DESC;

SELECT
    queue_name,
    SUM(calls_handled) AS total_calls_handled
FROM call_center_data
GROUP BY queue_name
ORDER BY total_calls_handled DESC
LIMIT 1;

SELECT
    queue_name,
    ROUND(AVG(avg_handle_time_sec), 2) AS avg_handle_time_sec
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_handle_time_sec DESC
LIMIT 1;

SELECT
    queue_name,
    ROUND(AVG(avg_wait_time_sec), 2) AS avg_wait_time_sec
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_wait_time_sec DESC
LIMIT 1;

SELECT
    queue_name,
    ROUND(AVG(first_call_resolution_pct) * 100, 2) AS avg_fcr_pct
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_fcr_pct DESC
LIMIT 1;

SELECT
    queue_name,
    ROUND(AVG(csat_score), 2) AS avg_csat
FROM call_center_data
GROUP BY queue_name
ORDER BY avg_csat DESC
LIMIT 1;

SELECT
    queue_name,
    ROUND(
        SUM(calls_abandoned) /
        (SUM(calls_handled) + SUM(calls_abandoned)) * 100,
        2
    ) AS abandonment_rate_pct
FROM call_center_data
GROUP BY queue_name
ORDER BY abandonment_rate_pct DESC
LIMIT 1;

SELECT
    queue_name,
    ROUND(
        SUM(escalations) /
        SUM(calls_handled) * 100,
        2
    ) AS escalation_rate_pct
FROM call_center_data
GROUP BY queue_name
ORDER BY escalation_rate_pct DESC
LIMIT 1;