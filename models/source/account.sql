SELECT
  {{dbt_utils.surrogate_key(['account_id','customer_id'])}} account_key,
  account_id,
  customer_id,
  customer_name,
  CASE tax_status
    WHEN 1 then 'For-Profit'
    WHEN 2 then 'Non-Profit'
    ELSE 'Unknown'
  END tax_status,
  CASE customer_status_type
    WHEN 'ACTV' then 'Active'
    WHEN 'INAC' then 'Inactive'
    ELSE 'Unknown'
  END status_type,
  broker_id,
  cdc_dsn,
  cdc_flag
FROM
  {{var('source_schema')}}.account
