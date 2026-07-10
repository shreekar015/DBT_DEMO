with Bike as (
select distinct
START_STATIO_ID as STATIO_ID,
START_STATION_NAME as STATION_NAME,
START_LAT as STATION_LAT,
START_LNG AS START_STATION_LNG
from
{{ ref('stg_bike') }}
where
ride_id != 'ride_id'
)

select * from Bike