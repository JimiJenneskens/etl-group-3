-- Query 1:

Select 
magic_town.town,
states.state,
AVG(weather.precipitation)::NUMERIC(1000,2)
From states
Inner Join weather on weather.id_state = states.id
Inner Join magic_town on weather.id_state = magic_town.id_state
GROUP BY magic_town.town, states.state;


-- Query 2:

Select 
magic_town.town,
states.state,
AVG(gdp.tourism_gdp)::NUMERIC(1000,2)
From states
Inner Join gdp on gdp.id_state = states.id
Inner Join magic_town on gdp.id_state = magic_town.id_state
GROUP BY magic_town.town, states.state;


-- Query 3:

Select 
states.state,
count(magic_town.town)
From magic_town
Inner Join states on states.id = magic_town.id_state
GROUP BY states.state
ORDER BY states.state;
