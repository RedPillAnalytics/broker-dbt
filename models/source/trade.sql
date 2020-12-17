SELECT
  trade_id,
  trade_dt,
  customer_account_id,
  executor_id,
  CASE is_cash
    WHEN 1 then 'Cash'
    WHEN 0 then 'Non-Cash'
    ELSE 'Unknown'
  END transaction_type,
  security_symbol security,
  trade_type,
  status_type,
  quantity,
  tax,
  fees,
  commission,
  bid_price,
  trade_price
FROM
  {{source('trt','trade')}}
