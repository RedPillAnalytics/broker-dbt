SELECT DISTINCT
  customer_key,
  customer_id,
  first_name,
  middle_name,
  last_name,
  country,
  state,
  zipcode,
  dob,
  gender,
  tier,
  tax_id,
  primary_email,
  secondary_email
FROM
  {{ref('customer_activity')}}
