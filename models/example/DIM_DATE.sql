WITH CTE AS (
select
to_timestamp(STARTED_AT)  as STARTED_AT,
date(STARTED_AT) as date_STARTED_AT,
hour(to_timestamp(STARTED_AT))  as hour_STARTED_AT,

{{day_type('STARTED_AT')}} AS DAY_TYPE,
{{get_season('STARTED_AT')}} AS STATION_OF_YEAR

from
{{ source('demo', 'bike') }}
where
STARTED_AT != 'started_at'

)

select * from CTE