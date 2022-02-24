with payments as (
    select * from {{ ref('stg_payments') }}
),
orders as (
    select * from {{ ref('stg_orders') }}
)
select orders.order_id,
        orders.customer_id,
        payments.amount 
from orders 
left join payments using (order_id)
