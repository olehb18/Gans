#DROP DATABASE IF EXISTS wiki ;
#CREATE DATABASE wiki;
USE wiki;
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT,
    city_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (city_id)
);
CREATE TABLE city_info (
    info_id INT AUTO_INCREMENT,
    city_id INT NOT NULL,
    country VARCHAR(255),
    lat FLOAT,
    lon FLOAT,
    PRIMARY KEY (info_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE weather (
    weather_id INT AUTO_INCREMENT,
    city_id INT NOT NULL,
    temperature FLOAT,
    humidity INT,
    visibility INT,
    rain FLOAT,
    PRIMARY KEY (weather_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);


CREATE TABLE population (
    population_id INT AUTO_INCREMENT,
    city_id INT NOT NULL,
    population INT,
    date_gathered DATE,
    PRIMARY KEY (population_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE weather_forecast (
    forecast_id INT AUTO_INCREMENT,
    city_id INT NOT NULL,
    forecast_time DATETIME,
    outlook VARCHAR(255),
    temperature FLOAT,
    feels_like FLOAT,
    wind_speed FLOAT,
    rain_prob FLOAT,
    PRIMARY KEY (forecast_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

ALTER TABLE airports
MODIFY city_id INT;
ALTER TABLE airports MODIFY icao VARCHAR(10);
ALTER TABLE flights MODIFY icao VARCHAR(10);
ALTER TABLE airports
ADD FOREIGN KEY (city_id) REFERENCES cities(city_id);
ALTER TABLE airports
ADD PRIMARY KEY (icao);
ALTER TABLE flights
ADD FOREIGN KEY (icao) REFERENCES airports(icao);
ALTER TABLE weather_forecast
MODIFY city_id INT;
ALTER TABLE weather_forecast
ADD FOREIGN KEY (city_id) REFERENCES cities(city_id);