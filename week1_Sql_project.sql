CREATE DATABASE lux_bootcamp;

use lux_bootcamp;
create table weather_data(
	Date_time DATETIME,
    Temp_C DECIMAL(5, 2),
    Dew_Point_Temp_C DECIMAL(5, 2),
    Rel_Hum_Percent INT,
    Wind_Speed_km_h INT,
    Visibility_km DECIMAL(5, 2),
    Press_kPa DECIMAL(5, 2),
    Weather VARCHAR(255)
);
select * from weather_data;


-- Find all records where the weather was exactly clear.
select * from weather_data where weather_data.weather = 'clear';

-- Find the number of times the wind speed was exactly 4 km/hr.
select count(*) from weather_data
where wind_speed_km_h = 4;

-- Find the number of records where the wind speed is greater than 24 km/hr and visibility is equal to 25 km.
select count(*) from weather_data
where Wind_Speed_km_h > 24 and visibility_km = 25;

-- Find all instances where the weather is clear and the relative humidity is greater than 50, or visibility is above 40.
select * from weather_data
where weather = 'clear' and 
Rel_Hum_Percent > 50 or visibility_km>40;






