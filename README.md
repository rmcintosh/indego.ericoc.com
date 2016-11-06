indego.ericoc.com
==============================

About
-----

Since I previously made an [Indego PHP library](https://github.com/ericoc/indego-php-lib) for Philadelphias bike share,
I decided to use the library to generate pretty current and historical graphs of bicycle availability at https://indego.ericoc.com/

I was inspired by the awesome graphs showing the availability of bikes at each station during commuting times on [Randal Olsons blog here](http://www.randalolson.com/2015/09/05/visualizing-indego-bike-share-usage-patterns-in-philadelphia-part-2/)!

Background
----------

I have been running [this script](https://github.com/ericoc/indego.ericoc.com/blob/master/backend/db_insert.php) as a [cron job](https://github.com/ericoc/indego.ericoc.com/blob/master/backend/indego_db_insert.cron) on my personal server.
It has been collecting data from the Philly Indego Bike Share API and storing that data to a [local MySQL database](https://github.com/ericoc/indego.ericoc.com/blob/master/backend/indego_api_db.sql) for just over a year.
I can tell you how many bikes and empty docks were at each bike-share station in Philadelphia (at the 10 minute intervals, anyways) since November of last year (2015).
As of November 2016, I have recorded about 4.5 million rows totaling ~180MB and I will soon hit 50,000 records for each bike-share station!

More Information
----------------
* [My Indego PHP library](https://github.com/ericoc/indego-php-lib)
* [Highcharts] to generate the historical graphs
* [The actual Indego API](https://www.rideindego.com/stations/json/), a GeoJSON file
* [OpenDataPhilly description of the Indego API](https://www.opendataphilly.org/dataset/bike-share-stations)
