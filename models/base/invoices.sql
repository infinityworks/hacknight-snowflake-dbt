select
  InvoiceNo as invoice_no,
  CustomerId as cust_id
from
  {{ var('base.invoices') }}