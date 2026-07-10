with bike as(
select
RIDE_ID,
REPLACE(STARTED_AT,'"','') as started_at,
REPLACE(ENDED_AT,'"','') AS ENDED_AT,
START_STATION_NAME,
START_STATIO_ID,
END_STATION_NAME,
END_STATION_ID,
START_LAT,
START_LNG,
END_LAT,
END_LNG,
MEMBER_CSUAL
from
{{ source('demo', 'bike') }}
where ride_id not in ('bikeid', '"bikeid"')
 and
started_at != 'starttime'

)
select * from bike