select
    'database'          = sd.name
,   'created on'        = sd.create_date
,   'human readable'    = 
                            + cast(datediff(second, sd.create_date, getdate()) / 60 / 60 / 24 / 30 / 12 as nvarchar(50)) + ' years, '
                            + cast(datediff(second, sd.create_date, getdate()) / 60 / 60 / 24 / 30 % 12 as nvarchar(50)) + ' months, '
                            + cast(datediff(second, sd.create_date, getdate()) / 60 / 60 / 24 % 30 as nvarchar(50)) + ' days, '
                            + cast(datediff(second, sd.create_date, getdate()) / 60 / 60 % 24 as nvarchar(50)) + ' hours, '
                            + cast(datediff(second, sd.create_date, getdate()) / 60 % 60 as nvarchar(50)) + ' minutes '
                            + cast(datediff(second, sd.create_date, getdate()) % 60 as nvarchar(50)) + ' seconds '
from
    sys.databases sd
where
    sd.database_id > 4
order by
    sd.create_date desc
