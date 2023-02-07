
/* Top 10 pela métrica Explained GDP */
SELECT "RANK", "Country", "Happy_Score", "Explained_GDP"
FROM public."TB_HAPPY"
ORDER BY "Explained_GDP" DESC
LIMIT 10

/* Top 10 pela métrica Explained Social */
SELECT "RANK", "Country", "Happy_Score", "Explained_Social"
FROM public."TB_HAPPY"
ORDER BY "Explained_Social" DESC
LIMIT 10

/* Top 10 pela métrica Explained Health */
SELECT "RANK", "Country", "Happy_Score", "Explained_Health"
FROM public."TB_HAPPY"
ORDER BY "Explained_Health" DESC
LIMIT 10

/* Top 10 pela métrica Explained Health */
SELECT "RANK", "Country", "Happy_Score", "Explained_Freedom"
FROM public."TB_HAPPY"
ORDER BY "Explained_Freedom" DESC
LIMIT 10

/* Top 10 pela métrica Explained Generosity */
SELECT "RANK", "Country", "Happy_Score", "Explained_Generosity"
FROM public."TB_HAPPY"
ORDER BY "Explained_Generosity" DESC
LIMIT 10

/* Top 10 pela métrica Explained Corruption */
SELECT "RANK", "Country", "Happy_Score", "Explained_Corruption"
FROM public."TB_HAPPY"
ORDER BY "Explained_Corruption" DESC
LIMIT 10

/* What are the most generous countries with the best social support */
SELECT "RANK", "Country", "Happy_Score", ROUND(SUM("Explained_Social" + "Explained_Generosity")::DECIMAL, 2) AS "Generous_Support"
FROM public."TB_HAPPY"
GROUP BY "Country"
ORDER BY "Generous_Support" DESC
LIMIT 10

/* Does the perception of generosity depend on GDP per capita? */
SELECT ROUND(corr("Explained_Generosity", "Explained_GDP")::DECIMAL, 4) as "Correlacao_Generosity_GDP"
FROM public."TB_HAPPY"

/* What are the average happiness scores by region? */
SELECT "TB_REGIOES"."Region", ROUND(AVG("Happy_Score")::DECIMAL, 2) AS "AVG_HAPPY_REGION"
FROM public."TB_HAPPY"
JOIN public."TB_REGIOES"
ON "TB_REGIOES"."Country" = "TB_HAPPY"."Country"
GROUP BY "TB_REGIOES"."Region"
ORDER BY "AVG_HAPPY_REGION" DESC

/* What are the countries with the highest healthy life expectancy and GDP per capita? Is there any connection? */
SELECT "RANK", "Country", "Happy_Score", ROUND(SUM("Explained_Health" + "Explained_GDP")::DECIMAL, 2) AS "Health_GDP"
FROM public."TB_HAPPY"
GROUP BY "Country"
ORDER BY "Health_GDP" DESC
LIMIT 10

SELECT ROUND(corr("Explained_Health", "Explained_GDP")::DECIMAL, 4) as "Correlacao_Health_GDP"
FROM public."TB_HAPPY"

/* Countries that are more distant compared to Dystopia country */
SELECT "Country", "Happy_Score", "Dystopia", ROUND(SUM("Happy_Score" - "Dystopia")::DECIMAL, 2) AS "Distance_Dystopia"
FROM public."TB_HAPPY"
GROUP BY "Country"
ORDER BY "Distance_Dystopia" DESC
LIMIT 10







