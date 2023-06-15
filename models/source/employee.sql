SELECT
  {{dbt_utils.generate_surrogate_key(['employee_id','branch'])}} broker_key,
  *
FROM
  {{source('trt','employee')}}
