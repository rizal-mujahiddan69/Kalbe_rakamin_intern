-- Berapa rata-rata umur customer jika dilihat dari gender nya?
SELECT
  CASE
    WHEN gender = 0 THEN 'Wanita'
    WHEN gender = 1 THEN 'Pria'
    ELSE 'Unknown' -- You can specify a default value for other cases
  END AS gender,
  AVG(age) AS "rata-rata umur"
FROM customer c
GROUP BY gender;