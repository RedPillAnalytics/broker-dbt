SELECT
  {{dbt_utils.surrogate_key(['employee_id','branch'])}} broker_key,
  *
FROM
  {{var('source_schema')}}.hr
