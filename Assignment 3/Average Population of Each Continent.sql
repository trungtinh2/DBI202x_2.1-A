SELECT country.continent,AVG(city.population) 
FROM country,city
WHERE city.countrycode = country.code
GROUP BY country.continent