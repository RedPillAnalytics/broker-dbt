SELECT
  trade_id,
  trade_name trade_type,
  CASE IS_MRKT
    WHEN 1 then 'Market'
    WHEN 0 then 'Limit'
  END order_type,
  CASE IS_SELL
    WHEN 1 then 'Sell'
    WHEN 0 then 'Buy'
  END transaction_type
FROM
  {{source('trt','trade_type')}}
