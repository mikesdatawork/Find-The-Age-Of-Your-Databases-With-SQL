![MIKES DATA WORK GIT REPO](https://raw.githubusercontent.com/mikesdatawork/images/master/git_mikes_data_work_banner_01.png "Mikes Data Work")        

# Find The Age Of Your Databases With SQL
**Post Date: March 16, 2015**        



## Contents    
- [About Process](##About-Process)  
- [SQL Logic](#SQL-Logic)  
- [Author](#Author)  
- [License](#License)       

## About-Process

<p>Here's some quick SQL Logic to show you how long a database has been around. Sure; you can check the create_date, but this will show you a report on how long it's been.</p>     



## SQL-Logic
```SQL
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
```


[![WorksEveryTime](https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](https://shitday.de/)

## Author

[![Gist](https://img.shields.io/badge/Gist-MikesDataWork-<COLOR>.svg)](https://gist.github.com/mikesdatawork)
[![Twitter](https://img.shields.io/badge/Twitter-MikesDataWork-<COLOR>.svg)](https://twitter.com/mikesdatawork)
[![Wordpress](https://img.shields.io/badge/Wordpress-MikesDataWork-<COLOR>.svg)](https://mikesdatawork.wordpress.com/)

    
## License
[![LicenseCCSA](https://img.shields.io/badge/License-CreativeCommonsSA-<COLOR>.svg)](https://creativecommons.org/share-your-work/licensing-types-examples/)

![Mikes Data Work](https://raw.githubusercontent.com/mikesdatawork/images/master/git_mikes_data_work_banner_02.png "Mikes Data Work")

