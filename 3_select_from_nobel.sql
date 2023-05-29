-- 1. Winners FROM 1950
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

-- 2. 1962 Literature
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

-- 3. Albert Einstein
SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein'

-- 4. Recent Peace Prizes
SELECT winner FROM nobel
WHERE yr >= 2000 AND subject ='Peace'


-- 5. Literature in the 1980's
SELECT yr, subject, winner 
FROM nobel 
WHERE subject = 'Literature' AND yr <= 1989 AND yr >= 1980

-- 6. Only Presidents
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter', 'Barack Obama')

-- 7. John
SELECT winner 
FROM nobel
WHERE winner Like 'John%'

-- 8. Chemistry AND Physics FROM different years
SELECT *
FROM nobel
WHERE subject = 'Physics' AND yr=1980 or subject = 'Chemistry' AND yr=1984

-- 9. Exclude Chemists AND Medics
SELECT * FROM nobel
WHERE yr=1980 AND subject <> 'Chemistry' AND subject <> 'Medicine'

-- 10. Early Medicine, Late Literature
SELECT * FROM nobel
WHERE subject ='Medicine' AND yr < 1910 or subject ='Literature' AND yr >= 2004 

-- 11. Umlaut
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG'

-- 12. Apostrophe
SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';

-- 13. Knights of the realm
SELECT
  winner,
  yr,
  subject
FROM
  nobel
WHERE
  winner LIKE 'Sir%'
ORDER BY
  yr DESC,
  winner;

--14. Chemistry AND Physics last
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY 
subject IN ('Physics','Chemistry'), subject,winner;