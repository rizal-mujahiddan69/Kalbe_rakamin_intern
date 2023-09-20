-- Berapa rata-rata umur customer jika 
-- dilihat dari marital statusnya ?

SELECT "Marital Status", AVG(age) as "rata-rata umur"
FROM customer c
WHERE "Marital Status" IS NOT NULL AND "Marital Status" <> ''
GROUP BY "Marital Status";