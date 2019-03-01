with invoices as (
    select * from {{ ref('invoices') }}
),
cards as (
    select * from {{ ref('creditcard') }}
)
select 
    invoices.invoice_no,
    invoices.cust_id,
    cards.avg_balance
from invoices, cards 
where cards.cust_id =  CONCAT('C', invoices.cust_id)

