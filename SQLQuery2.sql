SELECT	anio, MONTH(hechos_fecha) AS mes,
		COUNT(DISTINCT(nuc)) AS carpetas
FROM	tmp_feminicidio_concentrado
WHERE	anio = 2023
GROUP	BY anio, MONTH(hechos_fecha)




SELECT	*
FROM	tmp_feminicidio_concentrado