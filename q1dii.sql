SELECT DISTINCT a1.metabolism
FROM annotation a1
	INNER JOIN annotation a2
	ON (a1.metabolism = a2.metabolism
		AND a1.gene <> a2.gene)
