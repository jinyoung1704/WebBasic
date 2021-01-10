--프로그래머스,group by 

--고양이와 개는 몇마리 있을까
SELECT ANIMAL_TYPE"ANIMAL_TYPE",COUNT(*)"COUNT"
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY 1;

--동명 동물수 찾기
SELECT NAME,COUNT(NAME) AS COUNT
FROM ANIMAL_INS
GROUP BY NAME
HAVING COUNT(NAME) >=2
ORDER BY 1;

--입양시각 구하기(1)
SELECT HOUR(DATETIME) AS HOUR, COUNT(HOUR(DATETIME)) AS COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 AND 20
GROUP BY HOUR(DATETIME)
ORDER BY 1;