SELECT stay,                              		-- tempo de permaneêcia em anos 
	COUNT(*) 				AS count_int,      	-- quantidade de alunos
	ROUND(AVG(todep), 2) 	AS average_phq,   	-- pontuação total de depressão
	ROUND(AVG(tosc), 2) 	AS average_scs,    	-- pontuação total de conexão social
	ROUND(AVG(toas), 2) 	AS average_as      	-- pontuação total de stresse pela cultura nova
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;