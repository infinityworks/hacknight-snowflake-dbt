select
  {{ dbt_utils.surrogate_key('base.id') }} as id,
  base.id as nation_id,
  base.nation as name
from
  {{ ref('nations') }} base