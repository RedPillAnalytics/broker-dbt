WITH trade as (
SELECT
  trade_id,
  trade_dt,
  customer_account_id,
  executor_id,
  security,
  quantity,
  tax,
  fees,
  commission,
  bid_price,
  trade_price,
  status_type st_id,
  trade_type
FROM
  {{ref('trade')}}
)
SELECT
  {{dbt_utils.surrogate_key(['trade_id','trade_dt','transaction_type','order_type'])}} trade_key,
  *
FROM
  trade
JOIN
  {{ref('trade_type')} trt
on
trt.trade_id = trade.trade_type
JOIN
  {{ref('status_type')}}
USING
  (st_id)
