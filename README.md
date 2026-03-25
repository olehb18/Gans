# Gans
Flight &amp; Weather Data Pipeline
Project Summary

This project implements a complete end-to-end data pipeline that collects flight arrival data, weather information, and population statistics from external APIs, transforms the data using Python, and stores the results in a normalized relational MySQL database.

The system demonstrates API integration, data transformation, relational schema design, foreign key constraints, and structured SQL querying.


Business Context

Gans operates an e-scooter sharing service. Scooter demand is influenced by external factors such as weather conditions and tourist activity.

Flight arrivals are used as a proxy for tourism inflow, while weather data helps estimate short-term demand fluctuations.

This database enables structured analysis of these influencing factors.


## 🛠 Tech Stack

- Python  
- Pandas  
- Requests  
- MySQL  
- SQL (Joins, Foreign Keys, Normalization)  
- Jupyter Notebook  


Data Sources

- AeroDataBox API (RapidAPI) – flight arrivals  
- OpenWeather API – current and forecast weather  
- API Ninjas – population data  



Database Schema

The database is fully normalized and built around a central cities table.

Cities act as the core entity to prevent duplication of geographic data.  
All related information (airports, flights, weather, forecast, population) is linked through foreign key relationships.
Main Entities

- cities – core table containing city identifiers and names  
- airports – airports linked to cities via city_id  
- flights – flight arrivals linked to airports via icao  
- weather – current weather data per city  
- weather_forecast – forecasted weather per city  
- city_info – geographical information (country, latitude, longitude)  
- population – population data per city  
<img width="1042" height="796" alt="image" src="https://github.com/user-attachments/assets/2bcb50f9-1df4-48af-af23-6707cfd66835" />


Achievements

- Built a complete end-to-end ETL pipeline from API to relational database  
- Designed and implemented a fully normalized MySQL schema with foreign key constraints  
- Integrated multiple external APIs within a single workflow  
- Successfully transformed nested JSON into structured relational tables  
- Implemented relational joins to combine flights, airports, cities, and weather data  
- Ensured referential integrity and consistent data structure across tables

Key Achievements

- Developed a production-style relational data model from scratch  
- Implemented API-based data ingestion and transformation pipeline  
- Applied normalization principles to prevent duplication and maintain integrity  
- Built analytical SQL queries combining multiple dependent entities  
- Delivered a structured and scalable database architecture
