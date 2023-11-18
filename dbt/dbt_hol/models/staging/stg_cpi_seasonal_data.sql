select distinct
    timeseries.variable_name
    , timeseries.geo_id
    , timeseries.value
    , timeseries.variable
from
    financial__economic_essentials.cybersyn.bureau_of_labor_statistics_price_timeseries timeseries
join financial__economic_essentials.cybersyn.bureau_of_labor_statistics_price_attributes as attributes
on attributes.variable=timeseries.variable
    where attributes.frequency='Monthly'
and timeseries.variable ilike 'cpi%'
and timeseries.variable ilike '%seasonally%'