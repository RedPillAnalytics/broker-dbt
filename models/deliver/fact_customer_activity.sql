SELECT
  customer_key,
  action_ts,
  action_type,
  1 as customer_cnt
FROM
  {{ref('customer_activity')}}
