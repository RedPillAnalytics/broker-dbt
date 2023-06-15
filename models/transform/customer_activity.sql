SELECT
  {{dbt_utils.generate_surrogate_key(['customer_id','action_ts'])}} customer_key,
  {{dbt_utils.generate_surrogate_key(['customer_id','action_ts','action_type'])}} customer_activity_key,
    *
FROM
  {{ref('customer')}}
