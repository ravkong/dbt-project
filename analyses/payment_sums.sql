with payments as (
    select * from {{ ref('stg_payments') }}
)
select sum(payment_amount) from payments
where payment_status = 'success'