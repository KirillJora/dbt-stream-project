select
    "Geo Identificator"     geo_id
    , "Geo Name"    geo_name
    , "Level"   level
    , src.*
FROM {{source('FINANCIAL__ECONOMIC_ESSENTIALS','CYBERSYN', 'GEOGRAPHY_INDEX')}} src
where iso_name is not null
GROUP BY 1,2,3