select
  N_NATIONKEY as id,
  N_NAME as nation
from

  {{ var('base.nations') }}