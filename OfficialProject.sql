-- 1. Total Movie, Average IMDB rating and total Gross
SELECT 
	COUNT(movie_title) AS number_movie, 
	ROUND(AVG(rating), 2) AS avg_rating, 
	SUM(gross) AS total_gross
FROM Movies

-- 2. Top 10 Movies with the highest IMDB Rating Score
SELECT TOP 10
	movie_title,
	genre,
	rating
FROM Movies
ORDER BY rating DESC

-- 3. Top 10 Movies with the highest gross
SELECT TOP 10
	movie_title,
	genre,
	gross
FROM Movies
ORDER BY gross DESC

-- 4. Top 10 Movies with the highest MetaScore
SELECT TOP 10
	movie_title,
	genre,
	metascore
FROM Movies
ORDER BY metaScore DESC

-- 5. Bottom 10 Movies with the lowest IMDB Rating Score
SELECT TOP 10
	movie_title,
	genre,
	rating
FROM Movies
ORDER BY rating

-- 6. Bottom 10 Movies with the lowest gross
SELECT TOP 10
	movie_title,
	genre,
	gross
FROM Movies
WHERE gross IS NOT NULL
ORDER BY gross

-- 7. Bottom 10 Movies with the lowest MetaScore
SELECT TOP 10
id,
	movie_title,
	genre,
	metascore
FROM Movies
WHERE metascore IS NOT NULL
ORDER BY metascore

-- 8a. Create Temp Table to calculate the number of movies in each genre and store in temp table #TempGenreCount
WITH CTE_GenreCount AS (
SELECT 
	id,
  COUNT(CASE WHEN genre  LIKE '%Drama%' THEN 1 END) AS Drama,
  COUNT(CASE WHEN genre  LIKE '%Animation%' THEN 1 END) AS Animation,
  COUNT(CASE WHEN genre  LIKE '%Action%' THEN 1 END) AS Actions,
  COUNT(CASE WHEN genre  LIKE '%Adventure%' THEN 1 END) AS Adventure,
  COUNT(CASE WHEN genre  LIKE '%Biography%' THEN 1 END) AS Biography,
  COUNT(CASE WHEN genre  LIKE '%Comedy%' THEN 1 END) AS Comedy,
  COUNT(CASE WHEN genre  LIKE '%Thriller%' THEN 1 END) AS Thriller,
  COUNT(CASE WHEN genre  LIKE '%Crime%' THEN 1 END) AS Crime,
  COUNT(CASE WHEN genre  LIKE '%Horror%' THEN 1 END) AS Horror,
  COUNT(CASE WHEN genre  LIKE '%Mystery%' THEN 1 END) AS Mystery,
  COUNT(CASE WHEN genre  LIKE '%History%' THEN 1 END) AS History,
  COUNT(CASE WHEN genre  LIKE '%Sci-Fi%' THEN 1 END) AS Scifi,
  COUNT(CASE WHEN genre  LIKE '%Romance%' THEN 1 END) AS Romance,
  COUNT(CASE WHEN genre  LIKE '%Music%' THEN 1 END) AS Music,
  COUNT(CASE WHEN genre  LIKE '%Western%' THEN 1 END) AS Western,
  COUNT(CASE WHEN genre  LIKE '%Documentary%' THEN 1 END) AS Documentary,
  COUNT(CASE WHEN genre  LIKE '%Sport%' THEN 1 END) AS Sport,
  COUNT(CASE WHEN genre  LIKE '%Family%' THEN 1 END) AS Family,
  COUNT(CASE WHEN genre  LIKE '%Fantasy%' THEN 1 END) AS Fantasy,
  COUNT(CASE WHEN genre  LIKE '%War%' THEN 1 END) AS War,
  COUNT(CASE WHEN genre  LIKE '%Musical%' THEN 1 END) AS Musical,
  COUNT(CASE WHEN genre  LIKE '%Film-Noir%' THEN 1 END) AS FilmNoir
FROM Movies
GROUP BY id
)SELECT * INTO #TempGenreCount FROM CTE_GenreCount

-- 8b. Unpivot the temp table #TempGenreCount and store in temp table #TempGenreCount
SELECT 
	id, 
	genre, 
	num_count 
INTO #TempGenre
FROM (
	SELECT 
		id, 	
		[Drama], 
		[Animation], 
		[Actions], 
		[Adventure], 
		[Biography], 
		[Comedy], 
		[Thriller], 
		[Crime], 
		[Horror], 
		[Mystery], 
		[History], 
		[Scifi], 
		[Romance], 
		[Music], 
		[Western], 
		[Documentary], 
		[Sport], 
		[Family], 
		[War], 
		[Musical], 
		[FilmNoir]
	FROM  #TempGenreCount) p
UNPIVOT
(	
	num_count FOR genre in (
							[Drama], 
							[Animation], 
							[Actions], 
							[Adventure], 
							[Biography], 
							[Comedy], 
							[Thriller], 
							[Crime], 
							[Horror], 
							[Mystery], 
							[History], 
							[Scifi], 
							[Romance], 
							[Music], 
							[Western], 
							[Documentary], 
							[Sport], 
							[Family], 
							[War], 
							[Musical], 
							[FilmNoir]
						)
)AS unpvt

SELECT *
FROM #TempGenre

-- 9. Top 5 common movies' genres
SELECT TOP 5
	genre, 
	SUM(num_count) as common_genre
FROM #TempGenre
GROUP BY genre
ORDER BY common_genre DESC

-- 10. Average runtime of each genres
SELECT 
	tg.genre, 
	CONCAT(CAST(ROUND(AVG(duration),2) as VARCHAR(10)), ' min') as avg_duration
FROM Movies mv
JOIN #TempGenre tg
ON mv.id = tg.id
WHERE tg.num_count <> 0
GROUP BY tg.genre

-- 11. Average IMDB Score for each genres
SELECT 
	tg.genre, 
	ROUND(AVG(mv.rating),2) as avg_score
FROM Movies mv
JOIN #TempGenre tg
on mv.id = tg.id
WHERE tg.num_count <> 0
GROUP BY tg.genre
ORDER BY avg_score DESC

-- 12. Favorite movie genres through each decades and their rank in each decade.
WITH CTE_EachDecade AS (
SELECT 
	tg.genre, 
	CONCAT(FLOOR(year / 10) * 10, 's') AS decade, 
	tg.num_count
FROM Movies mv
JOIN #TempGenre tg
ON mv.id = tg.id
WHERE tg.num_count <> 0
)
SELECT 
	decade, 
	genre, 
	COUNT(*) AS frequency, 
	DENSE_RANK () OVER (PARTITION BY decade ORDER BY COUNT(*) DESC) AS genre_rank
FROM CTE_EachDecade
GROUP BY genre, decade
ORDER BY decade, genre, frequency DESC;

-- 13. Total wins of each genres and their win percentage compared to total wins
WITH CTE_GenreWins AS (
SELECT 
	tg.genre, 
	SUM(mv.wins) as total_wins
FROM Movies mv
JOIN #TempGenre tg
ON mv.id = tg.id
WHERE tg.num_count <> 0 
GROUP BY tg.genre
) 
SELECT 
	genre, 
	total_wins, 
	SUM(total_wins) OVER () as all_wins, 
	CONCAT(CAST((ROUND(total_wins/SUM(total_wins) OVER (),3) * 100 ) AS VARCHAR(10)), '%') AS win_percentage_of_total
FROM CTE_GenreWins

-- 14. TOP 5 Genres with the highest average number of nominations
SELECT TOP 5 
	tp.genre, 
	ROUND(AVG(mv.nominations),2) as genre_nominations
FROM Movies mv
JOIN #TempGenre tp
ON mv.id = tp.id
WHERE tp.num_count <> 0
GROUP BY tp.genre
ORDER BY genre_nominations DESC

-- 15. Count number of movie in each age certification
SELECT 
	certification, 
	COUNT(movie_title) as number_movies
FROM Movies
GROUP BY certification
ORDER BY number_movies DESC

-- 16. Age certification category with the highest percentage of movies that have a rating equal or above 8.0
WITH CTE_RatingAbove AS(
SELECT 
	certification, 
	CAST(COUNT(movie_title) OVER (PARTITION BY certification) AS int) AS movies_rating_above,  
	CAST(COUNT(certification) OVER () AS float) AS total_movies
FROM Movies
WHERE rating >= '8.0'
)
SELECT DISTINCT 
	certification, 
	movies_rating_above, 
	ROUND((movies_rating_above / total_movies) * 100, 4) as percentage_of_movies
FROM CTE_RatingAbove
ORDER BY percentage_of_movies DESC

-- 17. Top 3 age certifications in each decade
WITH CTE_CertDecade AS(
SELECT 
	CONCAT(FLOOR(year / 10) * 10, 's') AS decade,
	certification
FROM Movies 
)
SELECT 
	decade, 
	certification, 
	COUNT(certification) as number_cert,
	RANK() OVER (PARTITION BY decade ORDER BY COUNT(certification) DESC) AS rank_by_decade,
	CASE
		WHEN RANK() OVER (PARTITION BY decade ORDER BY COUNT(certification) DESC) <= 3 THEN 'Yes'
		ELSE 'No'
	END AS top_3_flag
	INTO #Temp_Top3Cert
FROM CTE_CertDecade
GROUP BY decade, certification
SELECT
	decade,
	certification,
	number_cert,
	rank_by_decade
FROM #Temp_Top3Cert
WHERE top_3_flag = 'Yes'

-- 18. Create a temp table to store the amount of Movies in each decade
SELECT 
	*,
	CONCAT(FLOOR(year / 10) * 10, 's') AS decade
	INTO #TempDecadeTable
FROM Movies

-- 19. Average IMDB rating in each decade 
SELECT 
	decade, 
	ROUND(AVG(rating),2) as avg_rating
FROM #TempDecadeTable
GROUP BY decade

-- 20. Number of Movies in each decade
SELECT
	decade,
	COUNT(movie_title) AS number_movies
FROM #TempDecadeTable
GROUP BY decade
ORDER BY number_movies DESC

-- 21. Total gross by decade and compare it with previous decade to see if it is increased or decreased
WITH CTE_GrossByDecade AS (
SELECT 
	decade, 
	ROUND(AVG(gross),2) as avg_gross  
FROM #TempDecadeTable
GROUP BY decade
)
SELECT 
	decade, 
	avg_gross,  
	ROUND(avg_gross - LAG(avg_gross) OVER (ORDER BY decade),2) AS compare_previous_gross
FROM CTE_GrossByDecade;

-- 22. Movies with the highest IMDB rating and metascore ratio in each decade
SELECT 
	a.movie_title, 
	a.decade, 
	a.rating, 
	a.metascore, a.
	rating_metascore_ratio
FROM (
SELECT 
	*, 
	ROUND(rating/metascore, 2) AS rating_metascore_ratio, 
	ROW_NUMBER() OVER (PARTITION BY decade ORDER BY ROUND(rating/metascore, 2) DESC ) AS rank_ratio
FROM #TempDecadeTable
WHERE rating IS NOT NULL AND metascore IS NOT NULL
) a
WHERE a.rank_ratio = '1'

-- 23. Top 10 Actors/Actresses with the highest average IMDB rating score
SELECT TOP 10
	ct.casts, 
	ROUND(AVG(mv.rating),2) AS avg_rating
FROM Movies mv
JOIN Casts ct
ON mv.id = ct.imdb_ID
GROUP BY ct.casts
ORDER BY avg_rating DESC

--  24. TOP 10 Actors/Actresses Highest grossing and their highest grossing movies 
WITH CTE_CastsHighestGross AS(
SELECT
	ct.casts, 
	mv.gross AS movie_gross, 
	SUM(gross) OVER (PARTITION BY ct.casts) AS gross_sum, 
	mv.movie_title, 
	RANK() OVER(PARTITION BY ct.casts ORDER BY gross DESC) AS casts_rank_movies
FROM Movies mv
JOIN Casts ct
ON mv.id = ct.imdb_ID
WHERE gross IS NOT NULL
)
SELECT DISTINCT TOP 10
	casts,
	movie_title, 
	movie_gross, 
	gross_sum AS total_gross
FROM CTE_CastsHighestGross
WHERE casts_rank_movies = '1'
ORDER BY total_gross DESC

-- 25. Top 10 most awarded directors and numner of movies they directed
SELECT TOP 10
	dr.directors, 
	COUNT(movie_title) AS number_movies, 
	SUM(wins) as number_awards
FROM Movies mv
JOIN Directors dr
ON mv.id = dr.imdb_ID
GROUP BY dr.directors
ORDER BY number_awards DESC

-- 26. Top 10 Highest Grossing Directors
SELECT TOP 10
	dr.directors,
	SUM(gross) as total_gross
FROM Movies mv
JOIN Directors dr
ON mv.id = dr.imdb_ID
WHERE gross IS NOT NULL
GROUP BY dr.directors
ORDER BY total_gross DESC

-- 27. Top 10 Highest Rating Directors
SELECT TOP 10
	dr.directors,
	ROUND(AVG(rating),2) as avg_rating
FROM Movies mv
JOIN Directors dr
ON mv.id = dr.imdb_ID
WHERE gross IS NOT NULL
GROUP BY dr.directors
ORDER BY avg_rating DESC

-- 28. Movie with the highest runtime
SELECT
	mv.movie_title,
	dr.directors,
	mv.year,
	mv.duration,
    CONVERT(VARCHAR(2), CAST(duration AS INT) / 60) + ' hours ' + CONVERT(VARCHAR(2), CAST(duration AS INT) % 60) + ' minutes' AS converted_time
FROM Movies mv
JOIN Directors dr
ON mv.id = dr.imdb_ID
ORDER BY duration DESC








