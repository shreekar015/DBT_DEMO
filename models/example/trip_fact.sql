with Trips as (
    select 
    RIDE_ID,
    -- RIDEABLE_TYPE,
    date(to_timestamp(started_at)) as trip_date,
    START_STATIO_ID,
    END_STATION_NAME,
    MEMBER_CSUAL as MEMBER_CASUAL,
    timestampdiff(second, to_timestamp(started_at), to_timestamp(ended_at)) as trip_duration_seconds
    from
   {{ ref('stg_bike') }}
    where
    ride_id != 'ride_id'
)

select * from Trips