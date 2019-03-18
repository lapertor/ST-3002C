SELECT person.personName, competition.competitionName, country.countryName, average, value1, value2, value3, value4, value5 
FROM result
NATURAL JOIN person
NATURAL JOIN country
NATURAL JOIN event
LEFT JOIN competition on result.competitionId = competition.competitionId
WHERE	event.eventName = "3x3x3 Cube"
	AND	recordAverageType NOT IN ("")
ORDER BY countryName, average DESC