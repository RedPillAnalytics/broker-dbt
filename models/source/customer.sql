SELECT
  customer_id,
  first_name,
  middle_name,
  last_name,
  country,
  state,
  zipcode,
  dob,
  gender,
  CASE tier
    WHEN 1 THEN 'Gold'
    WHEN 2 THEN 'Silver'
    WHEN 3 THEN 'Bronze'
    ELSE 'None'
  END tier,
  cust_tax_id tax_id,
  email1 primary_email,
  email2 secondary_email,
  action_ts,
  action_type
FROM
  {{source('trt','customer')}}
