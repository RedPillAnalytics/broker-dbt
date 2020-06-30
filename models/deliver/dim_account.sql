SELECT DISTINCT
  account_key,
  account_id,
  customer_id,
  customer_name,
  tax_status,
  status_type,
  broker_id,
  cdc_dsn,
  cdc_flag
FROM
  {{ref('account')}}
