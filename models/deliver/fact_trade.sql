{{
    config(
        unique_key='trade_key'
    )
}}



SELECT
  trade_key,
  customer_key,
  account_key,
  broker_key,
  trade_id,
  trade_dt,
  customer_account_id,
  security,
  quantity,
  tax,
  fees,
  commission,
  bid_price,
  trade_price,
  trade_type
FROM
  {{ref('trade_activity')}}
JOIN
  {{ref('account')}}
ON
  account_id=customer_account_id
JOIN
  {{ref('dim_customer')}}
USING
  (customer_id)
JOIN
  {{ref('employee')}}
on
  employee_id=executor_id
