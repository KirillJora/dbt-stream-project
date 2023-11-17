select
    "Date"  date
    ,"Geo Identificator"   geo_id
    , "Variable Name"   variable_name
    , "Value"   value
    , src.*
from {{source('FINANCIAL__ECONOMIC_ESSENTIALS', 'CYBERSYN', 'BUREAU_OF_LABOR_STATISTICS_EMPLOYMENT_TIMESERIES')}} src
where
    variable_name = 'Local Area Unemployment: Unemployment Rate, Seasonally adjusted, Monthly'
    AND date >= '2000-01-01'
GROUP BY 1,2,3,4