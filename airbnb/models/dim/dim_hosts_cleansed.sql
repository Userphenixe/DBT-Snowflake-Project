{{
    config(
        materialized = 'view'
    )
}}



with src_hosts as (
    select * from {{ref("src_hosts")}}
)

select
    created_at,
    host_id,
    coalesce(host_name, 'Anonymous') as host_name,
    is_superhost,
    updated_at
from
    src_hosts