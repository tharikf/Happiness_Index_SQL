
/* Queries respondendo as perguntas do projeto! */

/* 1 - Top 5 países mais felizes */

/*
	Os países mais felizes, de acordo com o índice, são:
		Finlândia: 7.821
		Dinamarca: 7.636
		Islândia: 7.557
		Suiça: 7.512
		Holanda: 7.415
*/
SELECT "RANK", "Country", "Happy_Score"
FROM public."TB_HAPPY"
ORDER BY "Happy_Score" DESC
LIMIT 5

/* 2- Top 5 países mais infelizes */
/*
	Os países mais infelizes, de acordo com o índice, são:
		Afeganistão: 2.404
		Líbano: 2.955
		Zimbábue: 2.995
		Ruanda: 3.268
		Botsuana: 3.471
*/
SELECT "RANK", "Country", "Happy_Score"
FROM public."TB_HAPPY"
ORDER BY "Happy_Score" ASC
LIMIT 5

/* 3 - Qual dos fatores possui maior e menor correlação com o índice de felicidade? */
/*
	A correlação entre o índice de felicidade e os fatores são:
		Correlação entre felicidade e GDP: 0.7637
		Correlação entre felicidade e suporte social: 0.7779
		Correlação entre felicidade e expectativa de vida: 0.7403
		Correlação entre felicidade e liberdade: 0.6248
		Correlação entre felicidade e generosidade: 0.0638
		Correlação entre felicidade e corrupção: 0.4162
*/
SELECT ROUND(corr("Happy_Score", "Explained_GDP")::DECIMAL, 4) as "Correlacao_Happy_GDP"
FROM public."TB_HAPPY"

SELECT ROUND(corr("Happy_Score", "Explained_Social")::DECIMAL, 4) as "Correlacao_Happy_Social"
FROM public."TB_HAPPY"

SELECT ROUND(corr("Happy_Score", "Explained_Health")::DECIMAL, 4) as "Correlacao_Happy_Health"
FROM public."TB_HAPPY"

SELECT ROUND(corr("Happy_Score", "Explained_Freedom")::DECIMAL, 4) as "Correlacao_Happy_Freedom"
FROM public."TB_HAPPY"

SELECT ROUND(corr("Happy_Score", "Explained_Generosity")::DECIMAL, 4) as "Correlacao_Happy_Generosity"
FROM public."TB_HAPPY"

SELECT ROUND(corr("Happy_Score", "Explained_Corruption")::DECIMAL, 4) as "Correlacao_Happy_Corruption"
FROM public."TB_HAPPY"

/* 4 - Quais são os 5 países com maior expectativa de vida e PIB Per Capita? Há alguma relação entre as variáveis? */
/*
	Os cinco países com maior média entre os índices de expectativa de vida e PIB Per Capita são:
		Luxemburgo: 1.50
		Singapura: 1.50
		Irlanda: 1.45
		Hong Kong: 1.45
		Suiça: 1.42
	
	Além disso, há uma alta correlação entre PIB Per Capita e expectativa de vida. O valor encontrado foi de
	0.8154.
*/
SELECT "RANK", "Country", "Happy_Score", ROUND(SUM(("Explained_Health" + "Explained_GDP") / 2)::DECIMAL, 2) AS "Health_GDP"
FROM public."TB_HAPPY"
GROUP BY "Country"
ORDER BY "Health_GDP" DESC
LIMIT 5


SELECT ROUND(corr("Explained_GDP", "Explained_Health")::DECIMAL, 4) as "Correlacao_GDP_Health"
FROM public."TB_HAPPY"

/* 5 - A percepção de generosidade depende do PIB Per Capita? */
/*
	Procuramos se há alguma relação entre o PIB Per Capita de um país e a percepção de generosidade dos
	habitantes desse país. A correlação encontrada foi de -0.1645.
*/
SELECT ROUND(corr("Explained_GDP", "Explained_Generosity")::DECIMAL, 4) as "Correlacao_GDP_Generosity"
FROM public."TB_HAPPY"

/* 6 - Qual a relação entre corrupção e PIB Per Capita? */
/*
	Verificamos se há relação entre a percepção de corrupção em um país e o PIB Per Capita. Encontramos uma
	correlação de 0.3776.
*/
SELECT ROUND(corr("Explained_Corruption", "Explained_GDP")::DECIMAL, 4) as "Correlacao_Corruption_GDP"
FROM public."TB_HAPPY"

/* 7 - Quais são os 5 países que estão mais distantes do país distópico de referência? */
/*
	Esses são os cinco países mais distantes do país distópico:
	Singapura: 5.55
	Noruega: 5.44
	Dinamarca: 5.41
	Suécia: 5.38
	Luxemburgo: 5.36
*/
SELECT "Country", "Happy_Score", "Dystopia", ROUND(SUM("Happy_Score" - "Dystopia")::DECIMAL, 2) AS "Distance_Dystopia"
FROM public."TB_HAPPY"
GROUP BY "Country"
ORDER BY "Distance_Dystopia" DESC
LIMIT 5


/* 8 - Qual é a média do índice de felicidade por região do planeta? */
/*
	Quando agrupamos os países em suas regiões, qual é a média de felicidade por região?
		América do Norte: 7.00
		Europa: 6.40
		América Central: 6.17
		América do Sul: 5.94
		Asia & Pacífico: 5.41
		Médio Oriente: 5.24
		Mundo Árabe: 5.02
		África: 4.49
*/
SELECT "TB_REGIOES"."Region", ROUND(AVG("Happy_Score")::DECIMAL, 2) AS "AVG_HAPPY_REGION"
FROM public."TB_HAPPY"
JOIN public."TB_REGIOES"
ON "TB_REGIOES"."Country" = "TB_HAPPY"."Country"
GROUP BY "TB_REGIOES"."Region"
ORDER BY "AVG_HAPPY_REGION" DESC





