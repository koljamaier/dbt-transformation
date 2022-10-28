select
    c_birth_year,
    COUNT(*) AS n_customers
from {{ source('bronze_1g', 'customer') }}
group by c_birth_year
order by c_birth_year desc
