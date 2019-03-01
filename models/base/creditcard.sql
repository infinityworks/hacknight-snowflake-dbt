select
  CUST_ID as cust_id,
  AVG_BALANCE as avg_balance
from
  {{ var('base.creditcard') }}