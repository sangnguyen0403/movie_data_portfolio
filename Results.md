1. Total Movie, Average IMDB rating and total Gross

```sql
SELECT
	COUNT(movie_title) AS number_movie,
	ROUND(AVG(rating), 2) AS avg_rating,
	SUM(gross) AS total_gross
FROM Movies
```

**Results**
| number_movie | avg_rating | total_gross |
| ------------- | ----------- | ------------ |
| 517 | 8\.04 | 33137\.73 |

2. Top 10 Movies with the highest IMDB Rating Score

```sql
SELECT TOP 10
	movie_title,
	genre,
	rating
FROM Movies
ORDER BY rating DESC
```

**Results**
| movie_title | genre | rating |
| ------------ | ----- | ------ |
| Nhà tù Shawshank | Drama | 9\.3 |
| Bố Già | Crime, Drama | 9\.2 |
| Kỵ Sĩ Bóng Đêm | Action, Crime, Drama | 9 |
| Chúa Tể Của Những Chiếc Nhẫn: Sự Quay Trở Lại Của Nhà Vua | Action, Adventure, Drama | 9 |
| Bản Danh Sách Của Schindler | Biography, Drama, History | 9 |
| Bố Già Phần II | Crime, Drama | 9 |
| 12 Người Đàn Ông Giận Dữ | Crime, Drama | 9 |
| Chuyện Tào Lao | Crime, Drama | 8\.9 |
| Kẻ Đánh Cắp Giấc Mơ | Action, Adventure, Sci\-Fi | 8\.8 |
| Chúa Tể Của Những Chiếc Nhẫn: Hai Tòa Tháp | Action, Adventure, Drama | 8\.8 |

3. Top 10 Movies with the highest gross

```sql
SELECT TOP 10
	movie_title,
	genre,
	gross
FROM Movies
ORDER BY gross DESC
```

**Results**
| movie_title | genre | gross |
| ------------ | ----- | ----- |
| Chiến Tranh Giữa Các Vì Sao Tập 7: Thần Lực Thức Tỉnh | Action, Adventure, Sci\-Fi | 936\.66 |
| Titanic | Drama, Romance | 659\.33 |
| Avengers: Biệt Đội Siêu Anh Hùng | Action, Sci\-Fi | 623\.28 |
| Kỵ Sĩ Bóng Đêm | Action, Crime, Drama | 534\.86 |
| E\.T: Sinh vật Ngoài Hành Tinh | Adventure, Family, Sci\-Fi | 435\.11 |
| Vua Sư Tử | Animation, Adventure, Drama | 422\.78 |
| Câu Chuyện Đồ Chơi 3 | Animation, Adventure, Comedy | 415 |
| Công Viên Kỷ Jura | Action, Adventure, Sci\-Fi | 402\.45 |
| Harry Potter và Bảo Bối Tử Thần: Phần 2 | Adventure, Family, Fantasy | 381\.01 |
| Đi Tìm Nemo | Animation, Adventure, Comedy | 380\.84 |

4. Top 10 Movies with the highest MetaScore

```sql
SELECT TOP 10
	movie_title,
	genre,
	metascore
FROM Movies
ORDER BY metaScore DESC
```

**Results**
| movie_title | genre | metascore |
| ------------ | ----- | --------- |
| Thời Thơ Ấu | Drama | 100 |
| Ba Sắc Màu: Đỏ | Drama, Mystery, Romance | 100 |
| Nơi Tất Cả Chỉ Là Những Giấc Mơ | Drama | 100 |
| Bố Già | Crime, Drama | 100 |
| Il conformista | Drama | 100 |
| Con Báo | Drama, History | 100 |
| Lawrence Xứ Ả Rập | Adventure, Biography, Drama | 100 |
| Quay Cuồng | Mystery, Romance, Thriller | 100 |
| Sweet Smell of Success | Drama, Film\-Noir | 100 |
| Vụ Án Mạng Nhà Bên | Mystery, Thriller | 100 |

5. Bottom 10 Movies with the lowest IMDB Rating Score

```sql
SELECT TOP 10
	movie_title,
	genre,
	rating
FROM Movies
ORDER BY rating
```

**Results**
| movie_title | genre | rating |
| ------------ | ----- | ------ |
| Shakespeare Đang Yêu | Comedy, Drama, History | 7\.1 |
| Săn Tiền Kiểu Mỹ | Crime, Drama | 7\.2 |
| Di Truyền | Drama, Horror, Mystery | 7\.3 |
| Anomalisa | Animation, Comedy, Drama | 7\.3 |
| Lincoln | Biography, Drama, History | 7\.3 |
| Tay Lái Nổi Loạn | Adventure, Drama | 7\.3 |
| Cô Bé Lọ Lem | Animation, Family, Fantasy | 7\.3 |
| Chú Nai Bambi | Animation, Adventure, Drama | 7\.3 |
| Lady Bird: Tuổi Nổi Loạn | Comedy, Drama | 7\.4 |
| Ánh Trăng | Drama | 7\.4 |

6. Bottom 10 Movies with the lowest gross

```sql
SELECT TOP 10
	movie_title,
	genre,
	gross
FROM Movies
WHERE gross IS NOT NULL
ORDER BY gross
```

**Results**
| movie_title | genre | gross |
| ------------ | ----- | ----- |
| Biệt Đội Tinh Nhuệ | Action, Crime, Drama | 0\.01 |
| Hồi Ức Kẻ Sát Nhân | Crime, Drama, Mystery | 0\.01 |
| Cuộc Gọi Chết Người | Crime, Thriller | 0\.01 |
| All About Eve | Drama | 0\.01 |
| Ánh Sáng Đô Thị | Comedy, Drama, Romance | 0\.02 |
| Bài Ca Khổ Hình Của Joan of Arc | Biography, Drama, History | 0\.02 |
| M \- Eine Stadt sucht einen Mörder | Crime, Mystery, Thriller | 0\.03 |
| Le Samouraï | Crime, Drama, Thriller | 0\.04 |
| 8½ | Drama | 0\.05 |
| Bronenosets Potemkin | Drama, History, Thriller | 0\.05 |

7. Bottom 10 Movies with the lowest MetaScore

```sql
SELECT TOP 10
id,
	movie_title,
	genre,
	metascore
FROM Movies
WHERE metascore IS NOT NULL
ORDER BY metascore
```

**Results**
| id | movie_title | genre | metascore |
| -- | ------------ | ----- | --------- |
| tt0120689 | Dặm Xanh | Crime, Drama, Fantasy | 61 |
| tt0091042 | Kỳ Nghỉ Của Ferris Bueller | Comedy | 61 |
| tt1454029 | Người Giúp Việc | Drama | 62 |
| tt0434409 | Chiến Binh Tự Do | Action, Drama, Sci\-Fi | 62 |
| tt0120586 | Lịch Sử Mĩ Thế Kỉ X | Crime, Drama | 62 |
| tt0067185 | Harold and Maude | Comedy, Drama, Romance | 62 |
| tt1130884 | Đảo Kinh Hoàng | Mystery, Thriller | 63 |
| tt0325980 | Cướp Biển Vùng Caribê: Lời Nguyền Của Tàu Ngọc Trai Đen | Action, Adventure, Fantasy | 63 |
| tt0059742 | Giai Điệu Hạnh Phúc | Biography, Drama, Family | 63 |
| tt0167404 | Giác Quan Thứ Sáu | Drama, Mystery, Thriller | 64 |

8a. Create Temp Table to calculate the number of movies in each genre and store in temp table #TempGenreCount

```sql
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
```

8b. Unpivot the temp table #TempGenreCount and store in temp table #TempGenreCount

```sql
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
```

9. Top 5 common movies' genres

```sql
SELECT TOP 5
	genre,
	SUM(num_count) as common_genre
FROM #TempGenre
GROUP BY genre
ORDER BY common_genre DESC
```

**Results**
| genre | common\_genre |
| ----- | ------------- |
| Drama | 366 | 
| Comedy | 111 | 
| Adventure | 107 | 
| Crime | 88 | 
| Actions | 84 |


10. Average runtime of each genres

```sql
SELECT 
	tg.genre, 
	CONCAT(CAST(ROUND(AVG(duration),2) as VARCHAR(10)), ' min') as avg_duration
FROM Movies mv
JOIN #TempGenre tg
ON mv.id = tg.id
WHERE tg.num_count <> 0
GROUP BY tg.genre
```

**Results**
| genre | avg\_duration |
| ----- | ------------- |
| Family | 111\.04 min | 
| Crime | 122\.69 min | 
| Biography | 138\.68 min | 
| Comedy | 105\.73 min | 
| Drama | 127\.54 min | 
| Horror | 104 min | 
| Adventure | 122\.61 min | 
| War | 143\.2 min | 
| Sport | 119\.83 min | 
| Scifi | 121\.6 min | 
| Animation | 96\.8 min | 
| Thriller | 119\.59 min | 
| Actions | 126\.36 min | 
| Romance | 118\.71 min | 
| History | 150\.7 min | 
| Mystery | 120\.95 min | 
| Western | 133\.41 min | 
| FilmNoir | 103 min | 
| Documentary | 95\.33 min | 
| Musical | 113\.13 min | 
| Music | 121\.1 min |


11. Average IMDB Score for each genres

```sql
SELECT 
	tg.genre, 
	ROUND(AVG(mv.rating),2) as avg_score
FROM Movies mv
JOIN #TempGenre tg
on mv.id = tg.id
WHERE tg.num_count <> 0
GROUP BY tg.genre
ORDER BY avg_score DESC
```

**Results**
| genre | avg\_score |
| ----- | ---------- |
| Crime | 8\.12 | 
| War | 8\.11 | 
| Actions | 8\.09 | 
| Mystery | 8\.08 | 
| Sport | 8\.08 | 
| FilmNoir | 8\.06 | 
| Adventure | 8\.06 | 
| Western | 8\.04 | 
| Scifi | 8\.04 | 
| Drama | 8\.04 | 
| Documentary | 8\.03 | 
| Biography | 8\.02 | 
| Animation | 8\.01 | 
| Thriller | 8\.01 | 
| Family | 8\.01 | 
| Romance | 7\.99 | 
| Music | 7\.97 | 
| Comedy | 7\.94 | 
| Horror | 7\.91 | 
| History | 7\.9 | 
| Musical | 7\.76 |


12. Favorite movie genres through each decades and their rank in each decade.

```sql
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
```

**Results**
| decade | genre | frequency | genre\_rank |
| ------ | ----- | --------- | ----------- |
| 1910s | Drama | 1 | 1 | 
| 1910s | History | 1 | 1 | 
| 1920s | Actions | 2 | 3 | 
| 1920s | Adventure | 2 | 3 | 
| 1920s | Biography | 1 | 4 | 
| 1920s | Comedy | 4 | 2 | 
| 1920s | Drama | 6 | 1 | 
| 1920s | Family | 1 | 4 | 
| 1920s | History | 2 | 3 | 
| 1920s | Horror | 2 | 3 | 
| 1920s | Mystery | 1 | 4 | 
| 1920s | Romance | 2 | 3 | 
| 1920s | Scifi | 1 | 4 | 
| 1920s | Thriller | 2 | 3 | 
| 1930s | Actions | 1 | 7 | 
| 1930s | Adventure | 6 | 3 | 
| 1930s | Animation | 1 | 7 | 
| 1930s | Biography | 1 | 7 | 
| 1930s | Comedy | 9 | 2 | 
| 1930s | Crime | 3 | 5 | 
| 1930s | Drama | 11 | 1 | 
| 1930s | Family | 2 | 6 | 
| 1930s | Horror | 4 | 4 | 
| 1930s | Music | 3 | 5 | 
| 1930s | Musical | 3 | 5 | 
| 1930s | Mystery | 4 | 4 | 
| 1930s | Romance | 6 | 3 | 
| 1930s | Scifi | 3 | 5 | 
| 1930s | Thriller | 3 | 5 | 
| 1930s | War | 3 | 5 | 
| 1930s | Western | 1 | 7 | 
| 1940s | Actions | 1 | 9 | 
| 1940s | Adventure | 4 | 6 | 
| 1940s | Animation | 3 | 7 | 
| 1940s | Biography | 1 | 9 | 
| 1940s | Comedy | 7 | 3 | 
| 1940s | Crime | 4 | 6 | 
| 1940s | Drama | 26 | 1 | 
| 1940s | Family | 4 | 6 | 
| 1940s | FilmNoir | 6 | 4 | 
| 1940s | Music | 1 | 9 | 
| 1940s | Mystery | 5 | 5 | 
| 1940s | Romance | 11 | 2 | 
| 1940s | Thriller | 2 | 8 | 
| 1940s | War | 5 | 5 | 
| 1940s | Western | 2 | 8 | 
| 1950s | Actions | 3 | 8 | 
| 1950s | Adventure | 8 | 3 | 
| 1950s | Animation | 1 | 10 | 
| 1950s | Comedy | 4 | 7 | 
| 1950s | Crime | 11 | 2 | 
| 1950s | Drama | 42 | 1 | 
| 1950s | Family | 1 | 10 | 
| 1950s | FilmNoir | 6 | 5 | 
| 1950s | Horror | 2 | 9 | 
| 1950s | Music | 2 | 9 | 
| 1950s | Musical | 1 | 10 | 
| 1950s | Mystery | 6 | 5 | 
| 1950s | Romance | 8 | 3 | 
| 1950s | Scifi | 3 | 8 | 
| 1950s | Thriller | 7 | 4 | 
| 1950s | War | 3 | 8 | 
| 1950s | Western | 5 | 6 | 
| 1960s | Actions | 6 | 6 | 
| 1960s | Adventure | 10 | 2 | 
| 1960s | Animation | 1 | 11 | 
| 1960s | Biography | 7 | 5 | 
| 1960s | Comedy | 8 | 4 | 
| 1960s | Crime | 6 | 6 | 
| 1960s | Drama | 36 | 1 | 
| 1960s | Family | 3 | 9 | 
| 1960s | History | 5 | 7 | 
| 1960s | Horror | 6 | 6 | 
| 1960s | Music | 3 | 9 | 
| 1960s | Musical | 3 | 9 | 
| 1960s | Mystery | 2 | 10 | 
| 1960s | Romance | 4 | 8 | 
| 1960s | Scifi | 2 | 10 | 
| 1960s | Thriller | 9 | 3 | 
| 1960s | War | 5 | 7 | 
| 1960s | Western | 5 | 7 | 
| 1970s | Actions | 4 | 6 | 
| 1970s | Adventure | 6 | 5 | 
| 1970s | Biography | 4 | 6 | 
| 1970s | Comedy | 12 | 2 | 
| 1970s | Crime | 9 | 3 | 
| 1970s | Drama | 34 | 1 | 
| 1970s | History | 2 | 7 | 
| 1970s | Horror | 4 | 6 | 
| 1970s | Music | 2 | 7 | 
| 1970s | Musical | 1 | 8 | 
| 1970s | Mystery | 6 | 5 | 
| 1970s | Romance | 6 | 5 | 
| 1970s | Scifi | 6 | 5 | 
| 1970s | Sport | 1 | 8 | 
| 1970s | Thriller | 7 | 4 | 
| 1970s | War | 6 | 5 | 
| 1970s | Western | 1 | 8 | 
| 1980s | Actions | 15 | 4 | 
| 1980s | Adventure | 17 | 3 | 
| 1980s | Animation | 5 | 7 | 
| 1980s | Biography | 5 | 7 | 
| 1980s | Comedy | 18 | 2 | 
| 1980s | Crime | 6 | 6 | 
| 1980s | Drama | 36 | 1 | 
| 1980s | Family | 4 | 8 | 
| 1980s | History | 2 | 10 | 
| 1980s | Horror | 4 | 8 | 
| 1980s | Music | 3 | 9 | 
| 1980s | Mystery | 2 | 10 | 
| 1980s | Romance | 5 | 7 | 
| 1980s | Scifi | 10 | 5 | 
| 1980s | Sport | 1 | 11 | 
| 1980s | Thriller | 4 | 8 | 
| 1980s | War | 6 | 6 | 
| 1990s | Actions | 11 | 5 | 
| 1990s | Adventure | 9 | 7 | 
| 1990s | Animation | 10 | 6 | 
| 1990s | Biography | 4 | 11 | 
| 1990s | Comedy | 15 | 3 | 
| 1990s | Crime | 23 | 2 | 
| 1990s | Drama | 51 | 1 | 
| 1990s | Family | 3 | 12 | 
| 1990s | History | 5 | 10 | 
| 1990s | Music | 2 | 13 | 
| 1990s | Mystery | 7 | 9 | 
| 1990s | Romance | 12 | 4 | 
| 1990s | Scifi | 4 | 11 | 
| 1990s | Sport | 1 | 14 | 
| 1990s | Thriller | 8 | 8 | 
| 1990s | War | 3 | 12 | 
| 1990s | Western | 2 | 13 | 
| 2000s | Actions | 23 | 3 | 
| 2000s | Adventure | 25 | 2 | 
| 2000s | Animation | 14 | 5 | 
| 2000s | Biography | 12 | 7 | 
| 2000s | Comedy | 17 | 4 | 
| 2000s | Crime | 17 | 4 | 
| 2000s | Documentary | 2 | 12 | 
| 2000s | Drama | 58 | 1 | 
| 2000s | Family | 6 | 10 | 
| 2000s | History | 2 | 12 | 
| 2000s | Horror | 2 | 12 | 
| 2000s | Music | 2 | 12 | 
| 2000s | Mystery | 14 | 5 | 
| 2000s | Romance | 11 | 8 | 
| 2000s | Scifi | 9 | 9 | 
| 2000s | Sport | 2 | 12 | 
| 2000s | Thriller | 13 | 6 | 
| 2000s | War | 3 | 11 | 
| 2010s | Actions | 18 | 3 | 
| 2010s | Adventure | 20 | 2 | 
| 2010s | Animation | 9 | 8 | 
| 2010s | Biography | 15 | 6 | 
| 2010s | Comedy | 17 | 4 | 
| 2010s | Crime | 9 | 8 | 
| 2010s | Documentary | 1 | 13 | 
| 2010s | Drama | 65 | 1 | 
| 2010s | Family | 1 | 13 | 
| 2010s | History | 8 | 9 | 
| 2010s | Horror | 2 | 12 | 
| 2010s | Music | 3 | 11 | 
| 2010s | Mystery | 8 | 9 | 
| 2010s | Romance | 7 | 10 | 
| 2010s | Scifi | 12 | 7 | 
| 2010s | Sport | 1 | 13 | 
| 2010s | Thriller | 16 | 5 | 
| 2010s | War | 1 | 13 | 
| 2010s | Western | 1 | 13 |


13. Total wins of each genres and their win percentage compared to total wins

```sql
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
```

**Results**
| genre | total\_wins | all\_wins | win\_percentage\_of\_total |
| ----- | ----------- | --------- | -------------------------- |
| Family | 487 | 40975 | 1\.2% | 
| Crime | 2527 | 40975 | 6\.2% | 
| Biography | 2289 | 40975 | 5\.6% | 
| Comedy | 3099 | 40975 | 7\.6% | 
| Drama | 12775 | 40975 | 31\.2% | 
| Horror | 412 | 40975 | 1% | 
| Adventure | 3806 | 40975 | 9\.3% | 
| War | 962 | 40975 | 2\.3% | 
| Sport | 188 | 40975 | 0\.5% | 
| Scifi | 1723 | 40975 | 4\.2% | 
| Animation | 1377 | 40975 | 3\.4% | 
| Thriller | 2595 | 40975 | 6\.3% | 
| Actions | 2976 | 40975 | 7\.3% | 
| Romance | 1944 | 40975 | 4\.7% | 
| History | 1202 | 40975 | 2\.9% | 
| Mystery | 1438 | 40975 | 3\.5% | 
| Western | 239 | 40975 | 0\.6% | 
| FilmNoir | 65 | 40975 | 0\.2% | 
| Documentary | 92 | 40975 | 0\.2% | 
| Musical | 104 | 40975 | 0\.3% | 
| Music | 675 | 40975 | 1\.6% |


14. TOP 5 Genres with the highest average number of nominations

```sql
SELECT TOP 5 
	tp.genre, 
	ROUND(AVG(mv.nominations),2) as genre_nominations
FROM Movies mv
JOIN #TempGenre tp
ON mv.id = tp.id
WHERE tp.num_count <> 0
GROUP BY tp.genre
ORDER BY genre_nominations DESC
```

**Results**
| genre | genre\_nominations |
| ----- | ------------------ |
| History | 71\.81 | 
| Biography | 69\.36 | 
| Scifi | 58\.42 | 
| Thriller | 54\.28 | 
| Actions | 50\.33 |


15. Count number of movie in each age certification

```sql
SELECT 
	certification, 
	COUNT(movie_title) as number_movies
FROM Movies
GROUP BY certification
ORDER BY number_movies DESC
```

**Results**
| certification | number\_movies |
| ------------- | -------------- |
| R | 197 | 
| PG | 80 | 
| PG\-13 | 66 | 
| Not Rated | 65 | 
| Passed | 37 | 
| G | 34 | 
| Approved | 25 | 
| TV\-MA | 2 | 
| TV\-PG | 2 | 
| Unrated | 2 | 
| X | 2 | 
| GP | 2 | 
| M/PG | 1 | 
| 16\+ | 1 | 
| 18\+ | 1 |


16. Age certification category with the highest percentage of movies that have a rating equal or above 8.0

```sql
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
```

**Results**
| certification | movies\_rating\_above | percentage\_of\_movies |
| ------------- | --------------------- | ---------------------- |
| R | 125 | 38\.2263 | 
| PG | 53 | 16\.208 | 
| Not Rated | 48 | 14\.6789 | 
| PG\-13 | 35 | 10\.7034 | 
| Passed | 21 | 6\.422 | 
| G | 20 | 6\.1162 | 
| Approved | 18 | 5\.5046 | 
| GP | 2 | 0\.6116 | 
| 16\+ | 1 | 0\.3058 | 
| 18\+ | 1 | 0\.3058 | 
| TV\-MA | 1 | 0\.3058 | 
| Unrated | 1 | 0\.3058 | 
| X | 1 | 0\.3058 |


17. Top 3 age certifications in each decade 

```sql
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
```

**Results**
| decade | certification | number\_cert | rank\_by\_decade |
| ------ | ------------- | ------------ | ---------------- |
| 1910s | Passed | 1 | 1 | 
| 1920s | Passed | 6 | 1 | 
| 1920s | Not Rated | 4 | 2 | 
| 1930s | Passed | 12 | 1 | 
| 1930s | Not Rated | 5 | 2 | 
| 1930s | G | 3 | 3 | 
| 1940s | Not Rated | 12 | 1 | 
| 1940s | Passed | 9 | 2 | 
| 1940s | PG | 4 | 3 | 
| 1940s | G | 4 | 3 | 
| 1950s | Not Rated | 18 | 1 | 
| 1950s | Approved | 9 | 2 | 
| 1950s | Passed | 8 | 3 | 
| 1960s | Approved | 11 | 1 | 
| 1960s | Not Rated | 10 | 2 | 
| 1960s | G | 9 | 3 | 
| 1970s | PG | 23 | 1 | 
| 1970s | R | 21 | 2 | 
| 1970s | Not Rated | 3 | 3 | 
| 1980s | R | 30 | 1 | 
| 1980s | PG | 20 | 2 | 
| 1980s | PG\-13 | 5 | 3 | 
| 1990s | R | 45 | 1 | 
| 1990s | PG\-13 | 9 | 2 | 
| 1990s | G | 5 | 3 | 
| 1990s | PG | 5 | 3 | 
| 2000s | R | 47 | 1 | 
| 2000s | PG\-13 | 21 | 2 | 
| 2000s | PG | 8 | 3 | 
| 2010s | R | 47 | 1 | 
| 2010s | PG\-13 | 26 | 2 | 
| 2010s | PG | 7 | 3 |


18. Create a temp table to store the amount of Movies in each decade

```sql
SELECT 
	*,
	CONCAT(FLOOR(year / 10) * 10, 's') AS decade
	INTO #TempDecadeTable
FROM Movies
```

19. Average IMDB rating in each decade 

```sql
SELECT 
	decade, 
	ROUND(AVG(rating),2) as avg_rating
FROM #TempDecadeTable
GROUP BY decade
```

**Results**
| decade | avg\_rating |
| ------ | ----------- |
| 1910s | 7\.7 | 
| 1920s | 8\.09 | 
| 1930s | 7\.93 | 
| 1940s | 8 | 
| 1950s | 8\.05 | 
| 1960s | 7\.99 | 
| 1970s | 8\.02 | 
| 1980s | 8\.03 | 
| 1990s | 8\.18 | 
| 2000s | 8\.1 | 
| 2010s | 7\.94 |


20. Number of Movies in each decade

```sql
SELECT
	decade,
	COUNT(movie_title) AS number_movies
FROM #TempDecadeTable
GROUP BY decade
ORDER BY number_movies DESC
```

**Results**
| decade | number\_movies |
| ------ | -------------- |
| 2000s | 87 | 
| 2010s | 84 | 
| 1990s | 70 | 
| 1980s | 60 | 
| 1950s | 51 | 
| 1960s | 49 | 
| 1970s | 49 | 
| 1940s | 32 | 
| 1930s | 24 | 
| 1920s | 10 | 
| 1910s | 1 |


21. Total gross by decade and compare it with previous decade to see if it is increased or decreased

```sql
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
```

**Results**
| decade | avg\_gross | compare\_previous\_gross |
| ------ | ---------- | ------------------------ |
| 1910s | 2\.18 | NULL | 
| 1920s | 1\.85 | \-0\.33 | 
| 1930s | 28\.32 | 26\.47 | 
| 1940s | 16\.61 | \-11\.71 | 
| 1950s | 13\.88 | \-2\.73 | 
| 1960s | 37\.1 | 23\.22 | 
| 1970s | 72 | 34\.9 | 
| 1980s | 75\.05 | 3\.05 | 
| 1990s | 91\.85 | 16\.8 | 
| 2000s | 92\.07 | 0\.22 | 
| 2010s | 117\.61 | 25\.54 |


22. Movies with the highest IMDB rating and metascore ratio in each decade

```sql
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
```

**Results**
| movie\_title | decade | rating | metascore | rating\_metascore\_ratio |
| ------------ | ------ | ------ | --------- | ------------------------ |
| Intolerance: Love's Struggle Throughout the Ages | 1910s | 7\.7 | 99 | 0\.08 | 
| Sunrise: A Song of Two Humans | 1920s | 8\.1 | 95 | 0\.09 | 
| Mr\. Smith Goes to Washington | 1930s | 8\.1 | 73 | 0\.11 | 
| Cuộc Sống Tươi Đẹp | 1940s | 8\.6 | 89 | 0\.1 | 
| Ace in the Hole | 1950s | 8\.1 | 72 | 0\.11 | 
| Giai Điệu Hạnh Phúc | 1960s | 8\.1 | 63 | 0\.13 | 
| Harold and Maude | 1970s | 7\.9 | 62 | 0\.13 | 
| Ngôi Nhà Ma | 1980s | 8\.4 | 66 | 0\.13 | 
| Dặm Xanh | 1990s | 8\.6 | 61 | 0\.14 | 
| Võ Sĩ Giác Đấu | 2000s | 8\.5 | 67 | 0\.13 | 
| Đảo Kinh Hoàng | 2010s | 8\.2 | 63 | 0\.13 |


23. Top 10 Actors/Actresses with the highest average IMDB rating score

```sql
SELECT TOP 10
	ct.casts, 
	ROUND(AVG(mv.rating),2) AS avg_rating
FROM Movies mv
JOIN Casts ct
ON mv.id = ct.imdb_ID
GROUP BY ct.casts
ORDER BY avg_rating DESC
```

**Results**
| casts | avg\_rating |
| ----- | ----------- |
| Bob Gunton | 9\.3 | 
| William Sadler | 9\.3 | 
| James Caan | 9\.2 | 
| Aaron Eckhart | 9 | 
| Caroline Goodall | 9 | 
| John Fiedler | 9 | 
| Liam Neeson | 9 | 
| John Travolta | 8\.9 | 
| Viggo Mortensen | 8\.9 | 
| Elijah Wood | 8\.87 |


24. TOP 10 Actors/Actresses Highest grossing and their highest grossing movies 

```sql
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
```

**Results**
| casts | movie\_title | movie\_gross | total\_gross |
| ----- | ------------ | ------------ | ------------ |
| Leonardo DiCaprio | Titanic | 659\.33 | 1840\.27 | 
| Tom Hanks | Câu Chuyện Đồ Chơi 3 | 415 | 1700\.86 | 
| Harrison Ford | Chiến Tranh Giữa Các Vì Sao Tập 4: Niềm Hi Vọng Mới | 322\.74 | 1492\.6 | 
| Orlando Bloom | Chúa Tể Của Những Chiếc Nhẫn: Sự Quay Trở Lại Của Nhà Vua | 377\.85 | 1341\.35 | 
| Domhnall Gleeson | Chiến Tranh Giữa Các Vì Sao Tập 7: Thần Lực Thức Tỉnh | 936\.66 | 1184\.06 | 
| Elijah Wood | Chúa Tể Của Những Chiếc Nhẫn: Sự Quay Trở Lại Của Nhà Vua | 377\.85 | 1035\.94 | 
| Ian McKellen | Chúa Tể Của Những Chiếc Nhẫn: Sự Quay Trở Lại Của Nhà Vua | 377\.85 | 1035\.94 | 
| Carrie Fisher | Chiến Tranh Giữa Các Vì Sao Tập 4: Niềm Hi Vọng Mới | 322\.74 | 1015\.17 | 
| Oscar Isaac | Chiến Tranh Giữa Các Vì Sao Tập 7: Thần Lực Thức Tỉnh | 936\.66 | 962\.1 | 
| Matt Damon | Người Về Từ Sao Hỏa | 228\.43 | 943\.25 |


25. Top 10 most awarded directors and numner of movies they directed

```sql
SELECT TOP 10
	dr.directors, 
	COUNT(movie_title) AS number_movies, 
	SUM(wins) as number_awards
FROM Movies mv
JOIN Directors dr
ON mv.id = dr.imdb_ID
GROUP BY dr.directors
ORDER BY number_awards DESC
```

**Results**
| directors | number\_movies | number\_awards |
| --------- | -------------- | -------------- |
| Alfonso Cuarón | 4 | 557 | 
| Christopher Nolan | 6 | 494 | 
| Steven Spielberg | 11 | 486 | 
| Peter Jackson | 3 | 472 | 
| Damien Chazelle | 2 | 338 | 
| Alejandro G\. Iñárritu | 3 | 337 | 
| Quentin Tarantino | 6 | 326 | 
| David Fincher | 4 | 278 | 
| George Miller | 2 | 253 | 
| Martin Scorsese | 8 | 243 |


26. Top 10 Highest Grossing Directors

```sql
SELECT TOP 10
	dr.directors,
	SUM(gross) as total_gross
FROM Movies mv
JOIN Directors dr
ON mv.id = dr.imdb_ID
WHERE gross IS NOT NULL
GROUP BY dr.directors
ORDER BY total_gross DESC
```

**Results**
| directors | total\_gross |
| --------- | ------------ |
| Steven Spielberg | 2467\.32 | 
| Christopher Nolan | 1282\.46 | 
| J\.J\. Abrams | 1194\.39 | 
| Peter Jackson | 1035\.94 | 
| James Cameron | 987\.73 | 
| Pete Docter | 939\.38 | 
| Robert Zemeckis | 697\.31 | 
| Joss Whedon | 648\.79 | 
| Lee Unkrich | 624\.73 | 
| Andrew Stanton | 604\.65 |


27. Top 10 Highest Rating Directors

```sql
SELECT TOP 10
	dr.directors,
	ROUND(AVG(rating),2) as avg_rating
FROM Movies mv
JOIN Directors dr
ON mv.id = dr.imdb_ID
WHERE gross IS NOT NULL
GROUP BY dr.directors
ORDER BY avg_rating DESC
```

**Results**
| directors | avg\_rating |
| --------- | ----------- |
| Frank Darabont | 8\.95 | 
| Peter Jackson | 8\.87 | 
| Irvin Kershner | 8\.7 | 
| Lana Wachowski | 8\.7 | 
| Fernando Meirelles | 8\.6 | 
| Francis Ford Coppola | 8\.6 | 
| Jonathan Demme | 8\.6 | 
| Roberto Benigni | 8\.6 | 
| Milos Forman | 8\.55 | 
| Christopher Nolan | 8\.53 |


28. Movie with the highest runtime

```sql
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
```

**Results**
| movie\_title | directors | year | duration | converted\_time |
| ------------ | --------- | ---- | -------- | --------------- |
| Cuốn Theo Chiều Gió | Victor Fleming | 1939 | 238 | 3 hours 58 minutes | 
| Nước Mỹ Một Thời | Sergio Leone | 1984 | 229 | 3 hours 49 minutes | 
| Lawrence Xứ Ả Rập | David Lean | 1962 | 218 | 3 hours 38 minutes | 
| Ben\-Hur: Truyền Thuyết Đức Chúa Trời | William Wyler | 1959 | 212 | 3 hours 32 minutes | 
| Bảy Võ Sĩ Đạo | Akira Kurosawa | 1954 | 207 | 3 hours 27 minutes | 
| Andrei Rublev | Andrei Tarkovsky | 1966 | 205 | 3 hours 25 minutes | 
| Bố Già Phần II | Francis Ford Coppola | 1974 | 202 | 3 hours 22 minutes | 
| Giant | George Stevens | 1956 | 201 | 3 hours 21 minutes | 
| Chúa Tể Của Những Chiếc Nhẫn: Sự Quay Trở Lại Của Nhà Vua | Peter Jackson | 2003 | 201 | 3 hours 21 minutes | 
| Spartacus | Stanley Kubrick | 1960 | 197 | 3 hours 17 minutes | 
| Doctor Zhivago | David Lean | 1965 | 197 | 3 hours 17 minutes | 
| Kis Uykusu | Nuri Bilge Ceylan | 2014 | 196 | 3 hours 16 minutes | 
| Bản Danh Sách Của Schindler | Steven Spielberg | 1993 | 195 | 3 hours 15 minutes | 
| Titanic | James Cameron | 1997 | 194 | 3 hours 14 minutes | 
| Cuộc Đời Gandhi | Richard Attenborough | 1982 | 191 | 3 hours 11 minutes | 
| Dặm Xanh | Frank Darabont | 1999 | 189 | 3 hours 9 minutes | 
| JFK | Oliver Stone | 1991 | 189 | 3 hours 9 minutes | 
| Hương Mộc Lan | Paul Thomas Anderson | 1999 | 188 | 3 hours 8 minutes | 
| Nơi Tất Cả Chỉ Là Những Giấc Mơ | Ingmar Bergman | 1982 | 188 | 3 hours 8 minutes | 
| Con Báo | Luchino Visconti | 1963 | 186 | 3 hours 6 minutes | 
| Barry Lyndon | Stanley Kubrick | 1975 | 185 | 3 hours 5 minutes | 
| Kẻ Săn Hươu | Michael Cimino | 1978 | 183 | 3 hours 3 minutes | 
| Khiêu Vũ Với Bầy Sói | Kevin Costner | 1990 | 181 | 3 hours 1 minutes | 
| Sói Già Phố Wall | Martin Scorsese | 2013 | 180 | 3 hours 0 minutes | 
| Chúa Tể Của Những Chiếc Nhẫn: Hai Tòa Tháp | Peter Jackson | 2002 | 179 | 2 hours 59 minutes | 
| Tòa Án Chiến Tranh | Stanley Kramer | 1961 | 179 | 2 hours 59 minutes | 
| The Longest Day | Ken Annakin | 1962 | 178 | 2 hours 58 minutes | 
| Chúa Tể Của Những Chiếc Nhẫn: Những Người Bạn Của Nhẫn | Peter Jackson | 2001 | 178 | 2 hours 58 minutes | 
| Sòng Bạc | Martin Scorsese | 1995 | 178 | 2 hours 58 minutes | 
| Trái Tim Dũng Cảm | Mel Gibson | 1995 | 178 | 2 hours 58 minutes | 
| The Message | Moustapha Akkad | 1976 | 177 | 2 hours 57 minutes | 
| Bố Già | Francis Ford Coppola | 1972 | 175 | 2 hours 55 minutes | 
| La dolce vita | Federico Fellini | 1960 | 174 | 2 hours 54 minutes | 
| Cuộc Đào Thoát Vĩ Đại | John Sturges | 1963 | 172 | 2 hours 52 minutes | 
| Giai Điệu Hạnh Phúc | Robert Wise | 1965 | 172 | 2 hours 52 minutes | 
| Patton | Franklin J\. Schaffner | 1970 | 172 | 2 hours 52 minutes | 
| Yểu Điệu Thục Nữ | George Cukor | 1964 | 170 | 2 hours 50 minutes | 
| Ông Trùm Mặt Sẹo | Brian De Palma | 1983 | 170 | 2 hours 50 minutes | 
| The Best Years of Our Lives | William Wyler | 1946 | 170 | 2 hours 50 minutes | 
| Underground | Emir Kusturica | 1995 | 170 | 2 hours 50 minutes | 
| Kỳ Phùng Địch Thủ | Michael Mann | 1995 | 170 | 2 hours 50 minutes | 
| Lằn Ranh Đỏ Mỏng Manh | Terrence Malick | 1998 | 170 | 2 hours 50 minutes | 
| Huyền Thoại 1900 | Giuseppe Tornatore | 1998 | 169 | 2 hours 49 minutes | 
| Giải Cứu Binh Nhì Ryan | Steven Spielberg | 1998 | 169 | 2 hours 49 minutes | 
| Hố Đen Tử Thần | Christopher Nolan | 2014 | 169 | 2 hours 49 minutes | 
| Solaris | Andrei Tarkovsky | 1972 | 167 | 2 hours 47 minutes | 
| Thưở Ấy Miền Viễn Tây | Sergio Leone | 1968 | 165 | 2 hours 45 minutes | 
| Thời Thơ Ấu | Richard Linklater | 2014 | 165 | 2 hours 45 minutes | 
| Hành Trình Django | Quentin Tarantino | 2012 | 165 | 2 hours 45 minutes | 
| Tội Phạm Nhân Bản 2049 | Denis Villeneuve | 2017 | 164 | 2 hours 44 minutes | 
| Hoàng Đế Cuối Cùng | Bernardo Bertolucci | 1987 | 163 | 2 hours 43 minutes | 
| The Life and Death of Colonel Blimp | Michael Powell | 1943 | 163 | 2 hours 43 minutes | 
| Intolerance: Love's Struggle Throughout the Ages | D\.W\. Griffith | 1916 | 163 | 2 hours 43 minutes | 
| Stalker | Andrei Tarkovsky | 1979 | 162 | 2 hours 42 minutes | 
| The English Patient | Anthony Minghella | 1996 | 162 | 2 hours 42 minutes | 
| Thiện, Ác, Tà | Sergio Leone | 1966 | 161 | 2 hours 41 minutes | 
| Anatomy of a Murder | Otto Preminger | 1959 | 161 | 2 hours 41 minutes | 
| Cầu Sông Kwai | David Lean | 1957 | 161 | 2 hours 41 minutes | 
| Nashville | Robert Altman | 1975 | 160 | 2 hours 40 minutes | 
| Lãnh Chúa Hidetora | Akira Kurosawa | 1985 | 160 | 2 hours 40 minutes | 
| Sự Đố Kỵ Của Thiên Tài | Milos Forman | 1984 | 160 | 2 hours 40 minutes | 
| Andaz Apna Apna | Rajkumar Santoshi | 1994 | 160 | 2 hours 40 minutes | 
| Máu Sẽ Phải Đổ | Paul Thomas Anderson | 2007 | 158 | 2 hours 38 minutes | 
| Fitzcarraldo | Werner Herzog | 1982 | 158 | 2 hours 38 minutes | 
| 30' Sau Nửa Đêm | Kathryn Bigelow | 2012 | 157 | 2 hours 37 minutes | 
| Người Về Từ Cõi Chết | Alejandro G\. Iñárritu | 2015 | 156 | 2 hours 36 minutes | 
| Ngày Tàn Của Hitler | Oliver Hirschbiegel | 2004 | 156 | 2 hours 36 minutes | 
| Rạp Chiếu Bóng Thiên Đường | Giuseppe Tornatore | 1988 | 155 | 2 hours 35 minutes | 
| Đêm Ăn Chơi | Paul Thomas Anderson | 1997 | 155 | 2 hours 35 minutes | 
| Võ Sĩ Giác Đấu | Ridley Scott | 2000 | 155 | 2 hours 35 minutes | 
| A Woman Under the Influence | John Cassavetes | 1974 | 155 | 2 hours 35 minutes | 
| Amores perros | Alejandro G\. Iñárritu | 2000 | 154 | 2 hours 34 minutes | 
| Chuyện Tào Lao | Quentin Tarantino | 1994 | 154 | 2 hours 34 minutes | 
| Định Mệnh | Quentin Tarantino | 2009 | 153 | 2 hours 33 minutes | 
| Lần Theo Dấu Vết | Denis Villeneuve | 2013 | 153 | 2 hours 33 minutes | 
| Câu Chuyện Phía Tây | Jerome Robbins | 1961 | 153 | 2 hours 33 minutes | 
| Thành Phố Trung Tâm | Fritz Lang | 1927 | 153 | 2 hours 33 minutes | 
| Mặt Trận Phía Tây Vẫn Yên Tĩnh | Lewis Milestone | 1930 | 152 | 2 hours 32 minutes | 
| Kỵ Sĩ Bóng Đêm | Christopher Nolan | 2008 | 152 | 2 hours 32 minutes | 
| Điệp Vụ Boston | Martin Scorsese | 2006 | 151 | 2 hours 31 minutes | 
| Lincoln | Steven Spielberg | 2012 | 150 | 2 hours 30 minutes | 
| Nghệ Sĩ Dương Cầm | Roman Polanski | 2002 | 150 | 2 hours 30 minutes | 
| Sophie's Choice | Alan J\. Pakula | 1982 | 150 | 2 hours 30 minutes | 
| Trận Chiến Tàu Ngầm | Wolfgang Petersen | 1981 | 149 | 2 hours 29 minutes | 
| 2001: Chuyến Du Hành Không Gian | Stanley Kubrick | 1968 | 149 | 2 hours 29 minutes | 
| Cô Gái Mất Tích | David Fincher | 2014 | 149 | 2 hours 29 minutes | 
| Về Với Thiên Nhiên | Sean Penn | 2007 | 148 | 2 hours 28 minutes | 
| Kẻ Đánh Cắp Giấc Mơ | Christopher Nolan | 2010 | 148 | 2 hours 28 minutes | 
| Nhiệm Vụ Bất Khả Thi: Sụp Đổ | Christopher McQuarrie | 2018 | 147 | 2 hours 27 minutes | 
| Ảo Mộng Thiên Đường | David Lynch | 2001 | 147 | 2 hours 27 minutes | 
| Lời Sấm Truyền | Francis Ford Coppola | 1979 | 147 | 2 hours 27 minutes | 
| Ngôi Nhà Ma | Stanley Kubrick | 1980 | 146 | 2 hours 26 minutes | 
| Người Giúp Việc | Tate Taylor | 2011 | 146 | 2 hours 26 minutes | 
| Người Hầu Gái | Park Chan\-wook | 2016 | 145 | 2 hours 25 minutes | 
| Bản Báo Cáo Thiểu Số | Steven Spielberg | 2002 | 145 | 2 hours 25 minutes | 
| Chiến Hữu | Martin Scorsese | 1990 | 145 | 2 hours 25 minutes | 
| Paris, Texas | Wim Wenders | 1984 | 145 | 2 hours 25 minutes | 
| Những Tay Súng Miền Hoang Dã | Sam Peckinpah | 1969 | 145 | 2 hours 25 minutes | 
| Bóng Tối Chiến Tranh | Jean\-Pierre Melville | 1969 | 145 | 2 hours 25 minutes | 
| Con Đường Tội Lỗi Của Carlito | Brian De Palma | 1993 | 144 | 2 hours 24 minutes | 
| Người Về Từ Sao Hỏa | Ridley Scott | 2015 | 144 | 2 hours 24 minutes | 
| Sòng Bạc Hoàng Gia | Martin Campbell | 2006 | 144 | 2 hours 24 minutes | 
| Võ Sĩ Quyền Anh | Ron Howard | 2005 | 144 | 2 hours 24 minutes | 
| Avengers: Biệt Đội Siêu Anh Hùng | Joss Whedon | 2012 | 143 | 2 hours 23 minutes | 
| Tử Địa Skyfall | Sam Mendes | 2012 | 143 | 2 hours 23 minutes | 
| Cướp Biển Vùng Caribê: Lời Nguyền Của Tàu Ngọc Trai Đen | Gore Verbinski | 2003 | 143 | 2 hours 23 minutes | 
| Siêu Nhân | Richard Donner | 1978 | 143 | 2 hours 23 minutes | 
| Ikiru | Akira Kurosawa | 1952 | 143 | 2 hours 23 minutes | 
| Cuộc Đời Forrest Gump | Robert Zemeckis | 1994 | 142 | 2 hours 22 minutes | 
| Nhà tù Shawshank | Frank Darabont | 1994 | 142 | 2 hours 22 minutes | 
| Đến Mà Xem | Elem Klimov | 1985 | 142 | 2 hours 22 minutes | 
| Harry Potter và Tên Tù Nhân Ngục Azkaban | Alfonso Cuarón | 2004 | 142 | 2 hours 22 minutes | 
| Những Lá Thư Từ Iwo Jima | Clint Eastwood | 2006 | 141 | 2 hours 21 minutes | 
| Hãy Bắt Tôi Nếu Có Thể | Steven Spielberg | 2002 | 141 | 2 hours 21 minutes | 
| Thị Trấn Rio Bravo | Howard Hawks | 1959 | 141 | 2 hours 21 minutes | 
| Chiến Binh Quyền Anh | Gavin O'Connor | 2011 | 140 | 2 hours 20 minutes | 
| Mommy | Xavier Dolan | 2014 | 139 | 2 hours 19 minutes | 
| Người Hùng Không Súng | Mel Gibson | 2016 | 139 | 2 hours 19 minutes | 
| Sàn Đấu Sinh Tử | David Fincher | 1999 | 139 | 2 hours 19 minutes | 
| Kakushi\-toride no san\-akunin | Akira Kurosawa | 1958 | 139 | 2 hours 19 minutes | 
| Mary Poppins | Robert Stevenson | 1964 | 139 | 2 hours 19 minutes | 
| 8½ | Federico Fellini | 1963 | 138 | 2 hours 18 minutes | 
| Kiểu Tiếp Xúc Thứ 3 | Steven Spielberg | 1977 | 138 | 2 hours 18 minutes | 
| All the President's Men | Alan J\. Pakula | 1976 | 138 | 2 hours 18 minutes | 
| Sleuth | Joseph L\. Mankiewicz | 1972 | 138 | 2 hours 18 minutes | 
| All About Eve | Joseph L\. Mankiewicz | 1950 | 138 | 2 hours 18 minutes | 
| Dòng Sông Kì Bí | Clint Eastwood | 2003 | 138 | 2 hours 18 minutes | 
| Bí Mật Los Angeles | Curtis Hanson | 1997 | 138 | 2 hours 18 minutes | 
| Chiến Tranh Giữa Các Vì Sao Tập 7: Thần Lực Thức Tỉnh | J\.J\. Abrams | 2015 | 138 | 2 hours 18 minutes | 
| Săn Tiền Kiểu Mỹ | David O\. Russell | 2013 | 138 | 2 hours 18 minutes | 
| Đảo Kinh Hoàng | Martin Scorsese | 2010 | 138 | 2 hours 18 minutes | 
| Khoảnh Khắc Cuộc Đời | Florian Henckel von Donnersmarck | 2006 | 137 | 2 hours 17 minutes | 
| Cô Dâu Báo Thù 2 | Quentin Tarantino | 2004 | 137 | 2 hours 17 minutes | 
| Manchester by the Sea | Kenneth Lonergan | 2016 | 137 | 2 hours 17 minutes | 
| Logan: Người Sói | James Mangold | 2017 | 137 | 2 hours 17 minutes | 
| Cô Nàng Ngổ Ngáo | Jae\-young Kwak | 2001 | 137 | 2 hours 17 minutes | 
| Quái Vật Không Gian 2 | James Cameron | 1986 | 137 | 2 hours 17 minutes | 
| Kẻ Hủy Diệt 2: Ngày Phán Xét | James Cameron | 1991 | 137 | 2 hours 17 minutes | 
| Rosemary's Baby | Roman Polanski | 1968 | 137 | 2 hours 17 minutes | 
| Bắc Tây Bắc | Alfred Hitchcock | 1959 | 136 | 2 hours 16 minutes | 
| Cỗ Máy Tội Phạm | Stanley Kubrick | 1971 | 136 | 2 hours 16 minutes | 
| Câu Chuyện Tokyo | Yasujirô Ozu | 1953 | 136 | 2 hours 16 minutes | 
| Ma Trận | Lana Wachowski | 1999 | 136 | 2 hours 16 minutes | 
| Dọc Đường Gió Bụi | James Mangold | 2005 | 136 | 2 hours 16 minutes | 
| Khu Phố Roma | Alfonso Cuarón | 2018 | 135 | 2 hours 15 minutes | 
| Sóng Gió Cuộc Đời | Billy Bob Thornton | 1996 | 135 | 2 hours 15 minutes | 
| Một Tâm Hồn Đẹp | Ron Howard | 2001 | 135 | 2 hours 15 minutes | 
| Đôi Giày Đỏ | Michael Powell | 1948 | 135 | 2 hours 15 minutes | 
| Dieu Gi Da Xay Ra Voi Baby Jane? | Robert Aldrich | 1962 | 134 | 2 hours 14 minutes | 
| Công Chúa Mononoke | Hayao Miyazaki | 1997 | 134 | 2 hours 14 minutes | 
| 12 Năm Nô Lệ | Steve McQueen | 2013 | 134 | 2 hours 14 minutes | 
| Chuyện Tình Sau Núi | Ang Lee | 2005 | 134 | 2 hours 14 minutes | 
| In the Name of the Father | Jim Sheridan | 1993 | 133 | 2 hours 13 minutes | 
| Người Đàn Ông Trong Mưa | Barry Levinson | 1988 | 133 | 2 hours 13 minutes | 
| Bay Trên Tổ Chim Cúc Cu | Milos Forman | 1975 | 133 | 2 hours 13 minutes | 
| Tinh Anh Em | John Landis | 1980 | 133 | 2 hours 13 minutes | 
| Red River | Howard Hawks | 1948 | 133 | 2 hours 13 minutes | 
| Mutiny on the Bounty | Frank Lloyd | 1935 | 132 | 2 hours 12 minutes | 
| Thêm Vài Đồng Xu Lẻ | Sergio Leone | 1965 | 132 | 2 hours 12 minutes | 
| Đương Đầu Với Thử Thách | John McTiernan | 1988 | 132 | 2 hours 12 minutes | 
| Anh Chàng Hay Mơ | Terry Gilliam | 1985 | 132 | 2 hours 12 minutes | 
| Chiến Binh Tự Do | James McTeigue | 2005 | 132 | 2 hours 12 minutes | 
| Million Dollar Baby | Clint Eastwood | 2004 | 132 | 2 hours 12 minutes | 
| Tìm Tung Tích Mẹ | Denis Villeneuve | 2010 | 131 | 2 hours 11 minutes | 
| Chiến Dịch Sói Sa Mạc | Kathryn Bigelow | 2008 | 131 | 2 hours 11 minutes | 
| Hồi Ức Kẻ Sát Nhân | Bong Joon Ho | 2003 | 131 | 2 hours 11 minutes | 
| Ai Sợ Virginia Woolf? | Mike Nichols | 1966 | 131 | 2 hours 11 minutes | 
| Chiến Tranh Giữa Các Vì Sao Tập 6: Sự Quay Trở Lại Của Jedi | Richard Marquand | 1983 | 131 | 2 hours 11 minutes | 
| Le salaire de la peur | Henri\-Georges Clouzot | 1953 | 131 | 2 hours 11 minutes | 
| Cuộc Sống Tươi Đẹp | Frank Capra | 1946 | 130 | 2 hours 10 minutes | 
| Rebecca | Alfred Hitchcock | 1940 | 130 | 2 hours 10 minutes | 
| Phố Tàu | Roman Polanski | 1974 | 130 | 2 hours 10 minutes | 
| Thành Phố Của Chúa | Fernando Meirelles | 2002 | 130 | 2 hours 10 minutes | 
| Câu Chuyện Về Thelma Và Louise | Ridley Scott | 1991 | 130 | 2 hours 10 minutes | 
| Không Thể Tha Thứ | Clint Eastwood | 1992 | 130 | 2 hours 10 minutes | 
| Ảo Thuật Gia Đấu Trí | Christopher Nolan | 2006 | 130 | 2 hours 10 minutes | 
| Harry Potter và Bảo Bối Tử Thần: Phần 2 | David Yates | 2011 | 130 | 2 hours 10 minutes | 
| Tiêu Điểm | Tom McCarthy | 2015 | 129 | 2 hours 9 minutes | 
| Bí Mật Sau Ánh Mắt | Juan José Campanella | 2009 | 129 | 2 hours 9 minutes | 
| 12 Con Khỉ | Terry Gilliam | 1995 | 129 | 2 hours 9 minutes | 
| The Man Who Would Be King | John Huston | 1975 | 129 | 2 hours 9 minutes | 
| The Sting | George Roy Hill | 1973 | 129 | 2 hours 9 minutes | 
| Bò Đực Nổi Điên | Martin Scorsese | 1980 | 129 | 2 hours 9 minutes | 
| Giết Con Chim Nhại | Robert Mulligan | 1962 | 129 | 2 hours 9 minutes | 
| The Grapes of Wrath | John Ford | 1940 | 129 | 2 hours 9 minutes | 
| Mr\. Smith Goes to Washington | Frank Capra | 1939 | 129 | 2 hours 9 minutes | 
| Quay Cuồng | Alfred Hitchcock | 1958 | 128 | 2 hours 8 minutes | 
| Hội Cố Thi Nhân | Peter Weir | 1989 | 128 | 2 hours 8 minutes | 
| Der Himmel über Berlin | Wim Wenders | 1987 | 128 | 2 hours 8 minutes | 
| Eskiya | Yavuz Turgul | 1996 | 128 | 2 hours 8 minutes | 
| Những Kẻ Khờ Mộng Mơ | Damien Chazelle | 2016 | 128 | 2 hours 8 minutes | 
| Selma | Ava DuVernay | 2014 | 128 | 2 hours 8 minutes | 
| Bộ Ba Ưu Việt | Theodore Melfi | 2016 | 127 | 2 hours 7 minutes | 
| Di Truyền | Ari Aster | 2018 | 127 | 2 hours 7 minutes | 
| Star Trek: Du Hành Giữa Các Vì Sao | J\.J\. Abrams | 2009 | 127 | 2 hours 7 minutes | 
| 7 Tội Lỗi Chết Người | David Fincher | 1995 | 127 | 2 hours 7 minutes | 
| Crna macka, beli macor | Emir Kusturica | 1998 | 127 | 2 hours 7 minutes | 
| Indiana Jones Và Cuộc Thập Tự Chinh Cuối Cùng | Steven Spielberg | 1989 | 127 | 2 hours 7 minutes | 
| Công Viên Kỷ Jura | Steven Spielberg | 1993 | 127 | 2 hours 7 minutes | 
| Cool Hand Luke | Stuart Rosenberg | 1967 | 127 | 2 hours 7 minutes | 
| Dawn of the Dead | George A\. Romero | 1978 | 127 | 2 hours 7 minutes | 
| Yankee Doodle Dandy | Michael Curtiz | 1942 | 126 | 2 hours 6 minutes | 
| Kho Báu Ở Sierra Madre | John Huston | 1948 | 126 | 2 hours 6 minutes | 
| Chàng Will Tốt Bụng | Gus Van Sant | 1997 | 126 | 2 hours 6 minutes | 
| Hạnh Phúc Ảo | Spike Jonze | 2013 | 126 | 2 hours 6 minutes | 
| Vùng Đất Linh Hồn | Hayao Miyazaki | 2001 | 125 | 2 hours 5 minutes | 
| Laputa: Lâu Đài Trên Không | Hayao Miyazaki | 1986 | 125 | 2 hours 5 minutes | 
| Nhà Độc Tài Vĩ Đại | Charles Chaplin | 1940 | 125 | 2 hours 5 minutes | 
| Buổi Chiều Xui Xẻo | Sidney Lumet | 1975 | 125 | 2 hours 5 minutes | 
| Căn Hộ Tình Yêu | Billy Wilder | 1960 | 125 | 2 hours 5 minutes | 
| Hàm Cá Mập | Steven Spielberg | 1975 | 124 | 2 hours 4 minutes | 
| Cabaret | Bob Fosse | 1972 | 124 | 2 hours 4 minutes | 
| Người Voi | David Lynch | 1980 | 124 | 2 hours 4 minutes | 
| Ordinary People | Robert Redford | 1980 | 124 | 2 hours 4 minutes | 
| Chiến Tranh Giữa Các Vì Sao Tập 5: Đế Chế Phản Công | Irvin Kershner | 1980 | 124 | 2 hours 4 minutes | 
| Giai Điệu Kỳ Diệu | James Algar | 1940 | 124 | 2 hours 4 minutes | 
| Akira | Katsuhiro Ôtomo | 1988 | 124 | 2 hours 4 minutes | 
| Thành Phố Tội Ác | Frank Miller | 2005 | 124 | 2 hours 4 minutes | 
| Cuộc Chia Ly | Asghar Farhadi | 2011 | 123 | 2 hours 3 minutes | 
| Đường Đua Nghẹt Thở | Ron Howard | 2013 | 123 | 2 hours 3 minutes | 
| Shakespeare Đang Yêu | John Madden | 1998 | 123 | 2 hours 3 minutes | 
| The Man Who Shot Liberty Valance | John Ford | 1962 | 123 | 2 hours 3 minutes | 
| Quỷ Ám | William Friedkin | 1973 | 122 | 2 hours 2 minutes | 
| Chuyến Tàu Mang Tên Dục Vọng | Elia Kazan | 1951 | 122 | 2 hours 2 minutes | 
| A Place in the Sun | George Stevens | 1951 | 122 | 2 hours 2 minutes | 
| Le fabuleux destin d'Amélie Poulain | Jean\-Pierre Jeunet | 2001 | 122 | 2 hours 2 minutes | 
| Gần Như Nổi Tiếng | Cameron Crowe | 2000 | 122 | 2 hours 2 minutes | 
| Vẻ Đẹp Mỹ | Sam Mendes | 1999 | 122 | 2 hours 2 minutes | 
| Tình Yêu Tìm Lại | David O\. Russell | 2012 | 122 | 2 hours 2 minutes | 
| Relatos salvajes | Damián Szifron | 2014 | 122 | 2 hours 2 minutes | 
| Không Chốn Dung Thân | Ethan Coen | 2007 | 122 | 2 hours 2 minutes | 
| Siêu Cớm | Edgar Wright | 2007 | 121 | 2 hours 1 minutes | 
| Khách Sạn Rwanda | Terry George | 2004 | 121 | 2 hours 1 minutes | 
| Kẻ Trộm Siêu Thị | Hirokazu Koreeda | 2018 | 121 | 2 hours 1 minutes | 
| Network | Sidney Lumet | 1976 | 121 | 2 hours 1 minutes | 
| Chiến Tranh Giữa Các Vì Sao Tập 4: Niềm Hi Vọng Mới | George Lucas | 1977 | 121 | 2 hours 1 minutes | 
| Some Like It Hot | Billy Wilder | 1959 | 121 | 2 hours 1 minutes | 
| La battaglia di Algeri | Gillo Pontecorvo | 1966 | 121 | 2 hours 1 minutes | 
| A Man for All Seasons | Fred Zinnemann | 1966 | 120 | 2 hours 0 minutes | 
| Tay Đấm Huyền Thoại | John G\. Avildsen | 1976 | 120 | 2 hours 0 minutes | 
| Bệnh Lạ | Michael Showalter | 2017 | 120 | 2 hours 0 minutes | 
| Max Điên: Con Đường Tử Thần | George Miller | 2015 | 120 | 2 hours 0 minutes | 
| Chiến Dịch Sinh Tử | Ben Affleck | 2012 | 120 | 2 hours 0 minutes | 
| Oldboy: Báo Thù | Park Chan\-wook | 2003 | 120 | 2 hours 0 minutes | 
| Mạng Xã Hội | David Fincher | 2010 | 120 | 2 hours 0 minutes | 
| Triệu Phú Ổ Chuột | Danny Boyle | 2008 | 120 | 2 hours 0 minutes | 
| Anh Hùng | Yimou Zhang | 2002 | 120 | 2 hours 0 minutes | 
| Do the Right Thing | Spike Lee | 1989 | 120 | 2 hours 0 minutes | 
| Trung Đội | Oliver Stone | 1986 | 120 | 2 hours 0 minutes | 
| Blue Velvet | David Lynch | 1986 | 120 | 2 hours 0 minutes | 
| Không Thể Mua Chuộc | Brian De Palma | 1987 | 119 | 1 hours 59 minutes | 
| Lịch Sử Mĩ Thế Kỉ X | Tony Kaye | 1998 | 119 | 1 hours 59 minutes | 
| Cô Giáo Elly | Asghar Farhadi | 2009 | 119 | 1 hours 59 minutes | 
| Lâu Đài Di Động Của Howl | Hayao Miyazaki | 2004 | 119 | 1 hours 59 minutes | 
| Sứ Mệnh Hiểm Nguy | Joss Whedon | 2005 | 119 | 1 hours 59 minutes | 
| Người Chim hay \(Công Dụng Không Ngờ Của Việc Kém Nổi Tiếng\) | Alejandro G\. Iñárritu | 2014 | 119 | 1 hours 59 minutes | 
| Sủng Ái | Yorgos Lanthimos | 2018 | 119 | 1 hours 59 minutes | 
| Cuộc Truy Lùng | John Ford | 1956 | 119 | 1 hours 59 minutes | 
| Công Dân Kane | Orson Welles | 1941 | 119 | 1 hours 59 minutes | 
| Roman Holiday | William Wyler | 1953 | 118 | 1 hours 58 minutes | 
| From Here to Eternity | Fred Zinnemann | 1953 | 118 | 1 hours 58 minutes | 
| Shane | George Stevens | 1953 | 118 | 1 hours 58 minutes | 
| Du rififi chez les hommes | Jules Dassin | 1955 | 118 | 1 hours 58 minutes | 
| The Last Picture Show | Peter Bogdanovich | 1971 | 118 | 1 hours 58 minutes | 
| Room | Lenny Abrahamson | 2015 | 118 | 1 hours 58 minutes | 
| Mê Cung Của Pan | Guillermo del Toro | 2006 | 118 | 1 hours 58 minutes | 
| Nhà Vua Nói Lắp | Tom Hooper | 2010 | 118 | 1 hours 58 minutes | 
| Sự Im Lặng Của Bầy Cừu | Jonathan Demme | 1991 | 118 | 1 hours 58 minutes | 
| Nàng Công Chúa Ở Thung Lũng Gió | Hayao Miyazaki | 1984 | 117 | 1 hours 57 minutes | 
| Bá Tước Lebowski | Joel Coen | 1998 | 117 | 1 hours 57 minutes | 
| Brooklyn | John Crowley | 2015 | 117 | 1 hours 57 minutes | 
| Người Nhện: Vũ Trụ Mới | Bob Persichetti | 2018 | 117 | 1 hours 57 minutes | 
| Căn Bệnh Thế Kỷ | Jean\-Marc Vallée | 2013 | 117 | 1 hours 57 minutes | 
| Quái Vật Không Gian | Ridley Scott | 1979 | 117 | 1 hours 57 minutes | 
| Tội Phạm Nhân Bản | Ridley Scott | 1982 | 117 | 1 hours 57 minutes | 
| Les diaboliques | Henri\-Georges Clouzot | 1955 | 117 | 1 hours 57 minutes | 
| M \- Eine Stadt sucht einen Mörder | Fritz Lang | 1931 | 117 | 1 hours 57 minutes | 
| Tootsie | Sydney Pollack | 1982 | 116 | 1 hours 56 minutes | 
| Nhân Chứng Buộc Tội | Billy Wilder | 1957 | 116 | 1 hours 56 minutes | 
| M\*A\*S\*H | Robert Altman | 1970 | 116 | 1 hours 56 minutes | 
| Cuộc Đổ Bộ Bí Ẩn | Denis Villeneuve | 2016 | 116 | 1 hours 56 minutes | 
| Ngọt Và Đắng | Clint Eastwood | 2008 | 116 | 1 hours 56 minutes | 
| Cuộc Sống Tươi Đẹp | Roberto Benigni | 1997 | 116 | 1 hours 56 minutes | 
| Trở Về Tương Lai | Robert Zemeckis | 1985 | 116 | 1 hours 56 minutes | 
| Áo Giắp Sắt | Stanley Kubrick | 1987 | 116 | 1 hours 56 minutes | 
| Adaptation\. | Spike Jonze | 2002 | 115 | 1 hours 55 minutes | 
| Biệt Đội Tinh Nhuệ | José Padilha | 2007 | 115 | 1 hours 55 minutes | 
| Siêu Điệp Viên 3: Tối Hậu Thư Của Bourne | Paul Greengrass | 2007 | 115 | 1 hours 55 minutes | 
| Biệt Đội Tinh Nhuệ 2: Kẻ Thù Bên Trong | José Padilha | 2010 | 115 | 1 hours 55 minutes | 
| Gia Đình Siêu Nhân | Brad Bird | 2004 | 115 | 1 hours 55 minutes | 
| Cuộc Săn Lùng | Thomas Vinterberg | 2012 | 115 | 1 hours 55 minutes | 
| Bữa Sáng Ở Tiffany | Blake Edwards | 1961 | 115 | 1 hours 55 minutes | 
| E\.T: Sinh vật Ngoài Hành Tinh | Steven Spielberg | 1982 | 115 | 1 hours 55 minutes | 
| Indiana Jones Và Chiếc Rương Thánh Tích | Steven Spielberg | 1981 | 115 | 1 hours 55 minutes | 
| Tài Xế Taxi | Martin Scorsese | 1976 | 114 | 1 hours 54 minutes | 
| White Heat | Raoul Walsh | 1949 | 114 | 1 hours 54 minutes | 
| Người Giải Mã | Morten Tyldum | 2014 | 114 | 1 hours 54 minutes | 
| Låt den rätte komma in | Tomas Alfredson | 2008 | 114 | 1 hours 54 minutes | 
| Cuộc Chiến Luân Hồi | Doug Liman | 2014 | 113 | 1 hours 53 minutes | 
| Quái Xế Baby | Edgar Wright | 2017 | 113 | 1 hours 53 minutes | 
| Donnie Darko | Richard Kelly | 2001 | 113 | 1 hours 53 minutes | 
| Kẻ Mất Trí Nhớ | Christopher Nolan | 2000 | 113 | 1 hours 53 minutes | 
| La Grande Illusion | Jean Renoir | 1937 | 113 | 1 hours 53 minutes | 
| The Conversation | Francis Ford Coppola | 1974 | 113 | 1 hours 53 minutes | 
| Il conformista | Bernardo Bertolucci | 1970 | 113 | 1 hours 53 minutes | 
| Star Trek 2: Cơn thịnh nộ của Khan | Nicholas Meyer | 1982 | 113 | 1 hours 53 minutes | 
| Đi Tìm Vận May | John Schlesinger | 1969 | 113 | 1 hours 53 minutes | 
| Hành Tinh Khỉ | Franklin J\. Schaffner | 1968 | 112 | 1 hours 52 minutes | 
| The Philadelphia Story | George Cukor | 1940 | 112 | 1 hours 52 minutes | 
| Vụ Án Mạng Nhà Bên | Alfred Hitchcock | 1954 | 112 | 1 hours 52 minutes | 
| Những Kẻ Bên Lề | Olivier Nakache | 2011 | 112 | 1 hours 52 minutes | 
| Cha Và Con Của Tôi | Çagan Irmak | 2005 | 112 | 1 hours 52 minutes | 
| Khu vực 9 | Neill Blomkamp | 2009 | 112 | 1 hours 52 minutes | 
| Cô Dâu Báo Thù 1 | Quentin Tarantino | 2003 | 111 | 1 hours 51 minutes | 
| Chú Chuột Đầu Bếp | Brad Bird | 2007 | 111 | 1 hours 51 minutes | 
| Ánh Trăng | Barry Jenkins | 2016 | 111 | 1 hours 51 minutes | 
| Rebel Without a Cause | Nicholas Ray | 1955 | 111 | 1 hours 51 minutes | 
| Ace in the Hole | Billy Wilder | 1951 | 111 | 1 hours 51 minutes | 
| Những Kẻ Cướp Nhà Băng | Arthur Penn | 1967 | 111 | 1 hours 51 minutes | 
| Sức Nóng Màn Đêm | Norman Jewison | 1967 | 110 | 1 hours 50 minutes | 
| Butch Cassidy and the Sundance Kid | George Roy Hill | 1969 | 110 | 1 hours 50 minutes | 
| Ngón Tay Vàng | Guy Hamilton | 1964 | 110 | 1 hours 50 minutes | 
| Yôjinbô | Akira Kurosawa | 1961 | 110 | 1 hours 50 minutes | 
| Kumonosu\-jô | Akira Kurosawa | 1957 | 110 | 1 hours 50 minutes | 
| Le notti di Cabiria | Federico Fellini | 1957 | 110 | 1 hours 50 minutes | 
| American Graffiti | George Lucas | 1973 | 110 | 1 hours 50 minutes | 
| Sunset Blvd\. | Billy Wilder | 1950 | 110 | 1 hours 50 minutes | 
| Bài Ca Khổ Hình Của Joan of Arc | Carl Theodor Dreyer | 1928 | 110 | 1 hours 50 minutes | 
| Léon: Sát Thủ Chuyên Nghiệp | Luc Besson | 1994 | 110 | 1 hours 50 minutes | 
| Võ Sĩ | Darren Aronofsky | 2008 | 109 | 1 hours 49 minutes | 
| Before Midnight | Richard Linklater | 2013 | 109 | 1 hours 49 minutes | 
| Những Đứa Trẻ Thời Chiến | Alfonso Cuarón | 2006 | 109 | 1 hours 49 minutes | 
| Quái Vật Biến Hình | John Carpenter | 1982 | 109 | 1 hours 49 minutes | 
| The King of Comedy | Martin Scorsese | 1982 | 109 | 1 hours 49 minutes | 
| Tâm Thần Hoảng Loạn | Alfred Hitchcock | 1960 | 109 | 1 hours 49 minutes | 
| Cat on a Hot Tin Roof | Richard Brooks | 1958 | 108 | 1 hours 48 minutes | 
| La strada | Federico Fellini | 1954 | 108 | 1 hours 48 minutes | 
| On the Waterfront | Elia Kazan | 1954 | 108 | 1 hours 48 minutes | 
| Tia Nắng Vĩnh Cửu Của Tâm Hồn Tinh Khiết | Michel Gondry | 2004 | 108 | 1 hours 48 minutes | 
| Thiên Nga Đen | Darren Aronofsky | 2010 | 108 | 1 hours 48 minutes | 
| Phi Vụ Động Trời | Byron Howard | 2016 | 108 | 1 hours 48 minutes | 
| Người Máy Trỗi Dậy | Alex Garland | 2014 | 108 | 1 hours 48 minutes | 
| Quái Thú Vô Hình | John McTiernan | 1987 | 107 | 1 hours 47 minutes | 
| Giác Quan Thứ Sáu | M\. Night Shyamalan | 1999 | 107 | 1 hours 47 minutes | 
| Băng Đảng Người Anh | Guy Ritchie | 1998 | 107 | 1 hours 47 minutes | 
| Double Indemnity | Billy Wilder | 1944 | 107 | 1 hours 47 minutes | 
| Kẻ Hủy Diệt | James Cameron | 1984 | 107 | 1 hours 47 minutes | 
| Zerkalo | Andrei Tarkovsky | 1975 | 107 | 1 hours 47 minutes | 
| Frankenstein Trẻ | Mel Brooks | 1974 | 106 | 1 hours 46 minutes | 
| Sinh Viên Tốt Nghiệp | Mike Nichols | 1967 | 106 | 1 hours 46 minutes | 
| Kind Hearts and Coronets | Robert Hamer | 1949 | 106 | 1 hours 46 minutes | 
| Nghi Phạm Vô Hình | Bryan Singer | 1995 | 106 | 1 hours 46 minutes | 
| Cuộc Di Tản Dunkirk | Christopher Nolan | 2017 | 106 | 1 hours 46 minutes | 
| Tay Trống Cự Phách | Damien Chazelle | 2014 | 106 | 1 hours 46 minutes | 
| Coco: Hội Ngộ Diệu Kỳ | Lee Unkrich | 2017 | 105 | 1 hours 45 minutes | 
| Người Kéo Học Yêu | Tim Burton | 1990 | 105 | 1 hours 45 minutes | 
| Biệt Đội Săn Ma | Ivan Reitman | 1984 | 105 | 1 hours 45 minutes | 
| Festen | Thomas Vinterberg | 1998 | 105 | 1 hours 45 minutes | 
| Cuộc Gọi Chết Người | Alfred Hitchcock | 1954 | 105 | 1 hours 45 minutes | 
| Nữ Hoàng Châu Phi | John Huston | 1951 | 105 | 1 hours 45 minutes | 
| Chuyện Xảy Ra Trong Đêm | Frank Capra | 1934 | 105 | 1 hours 45 minutes | 
| Le Samouraï | Jean\-Pierre Melville | 1967 | 105 | 1 hours 45 minutes | 
| Repulsion | Roman Polanski | 1965 | 105 | 1 hours 45 minutes | 
| Kẻ Đầu Mối Pháp | William Friedkin | 1971 | 104 | 1 hours 44 minutes | 
| Người Thứ Ba | Carol Reed | 1949 | 104 | 1 hours 44 minutes | 
| Harvey | Henry Koster | 1950 | 104 | 1 hours 44 minutes | 
| A Matter of Life and Death | Michael Powell | 1946 | 104 | 1 hours 44 minutes | 
| Tên Trộm Nữ Trang | Guy Ritchie | 2000 | 104 | 1 hours 44 minutes | 
| Ai Mưu Hại Thỏ Roger? | Robert Zemeckis | 1988 | 104 | 1 hours 44 minutes | 
| Crimes and Misdemeanors | Woody Allen | 1989 | 104 | 1 hours 44 minutes | 
| Trốn Thoát | Jordan Peele | 2017 | 104 | 1 hours 44 minutes | 
| Câu Chuyện Tuổi Teen | Stephen Chbosky | 2012 | 103 | 1 hours 43 minutes | 
| Câu Chuyện Đồ Chơi 3 | Lee Unkrich | 2010 | 103 | 1 hours 43 minutes | 
| Xuân, Hạ, Thu, Đông\.\.\. Rồi Lại Xuân | Kim Ki\-duk | 2003 | 103 | 1 hours 43 minutes | 
| Dazed and Confused | Richard Linklater | 1993 | 103 | 1 hours 43 minutes | 
| Kỳ Nghỉ Của Ferris Bueller | John Hughes | 1986 | 103 | 1 hours 43 minutes | 
| Buổi Diễn Của Truman | Peter Weir | 1998 | 103 | 1 hours 43 minutes | 
| Roma città aperta | Roberto Rossellini | 1945 | 103 | 1 hours 43 minutes | 
| Swing Time | George Stevens | 1936 | 103 | 1 hours 43 minutes | 
| Hát Dưới Mưa | Stanley Donen | 1952 | 103 | 1 hours 43 minutes | 
| Những Cuộc Phiêu Lưu Của Robin Hood | Michael Curtiz | 1938 | 102 | 1 hours 42 minutes | 
| Bringing Up Baby | Howard Hawks | 1938 | 102 | 1 hours 42 minutes | 
| Phù Thủy Xứ Oz | Victor Fleming | 1939 | 102 | 1 hours 42 minutes | 
| Chuyện Tình Thế Chiến | Michael Curtiz | 1942 | 102 | 1 hours 42 minutes | 
| Câu Chuyện Về Notorious | Alfred Hitchcock | 1946 | 102 | 1 hours 42 minutes | 
| Paper Moon | Peter Bogdanovich | 1973 | 102 | 1 hours 42 minutes | 
| Nguyện Cầu Cho Một Giấc Mơ | Darren Aronofsky | 2000 | 102 | 1 hours 42 minutes | 
| Trùng Khánh Sâm Lâm | Kar\-Wai Wong | 1994 | 102 | 1 hours 42 minutes | 
| Lạc Lối Ở Tokyo | Sofia Coppola | 2003 | 102 | 1 hours 42 minutes | 
| Luân Hồi | Ron Fricke | 2011 | 102 | 1 hours 42 minutes | 
| Không Lùi Bước | David Mackenzie | 2016 | 102 | 1 hours 42 minutes | 
| Hunt for the Wilderpeople | Taika Waititi | 2016 | 101 | 1 hours 41 minutes | 
| Đảo Của Những Chú Chó | Wes Anderson | 2018 | 101 | 1 hours 41 minutes | 
| Hoa Hậu Nhí | Jonathan Dayton | 2006 | 101 | 1 hours 41 minutes | 
| Before Sunrise | Richard Linklater | 1995 | 101 | 1 hours 41 minutes | 
| Ngày Chuột Chũi | Harold Ramis | 1993 | 101 | 1 hours 41 minutes | 
| Vô Gian Đạo | Andrew Lau | 2002 | 101 | 1 hours 41 minutes | 
| Kẻ Lạ Trên Chuyến Tàu | Alfred Hitchcock | 1951 | 101 | 1 hours 41 minutes | 
| Chim Ưng Malta | John Huston | 1941 | 100 | 1 hours 40 minutes | 
| King Kong | Merian C\. Cooper | 1933 | 100 | 1 hours 40 minutes | 
| The Innocents | Jack Clayton | 1961 | 100 | 1 hours 40 minutes | 
| Đi Tìm Nemo | Andrew Stanton | 2003 | 100 | 1 hours 40 minutes | 
| Tay Lái Siêu Hạng | Nicolas Winding Refn | 2011 | 100 | 1 hours 40 minutes | 
| Nghệ Sĩ | Michel Hazanavicius | 2011 | 100 | 1 hours 40 minutes | 
| Khách Sạn Đế Vương | Wes Anderson | 2014 | 99 | 1 hours 39 minutes | 
| Giữa Bầy Xác Sống | Edgar Wright | 2004 | 99 | 1 hours 39 minutes | 
| Những Kẻ Phản Bội | Quentin Tarantino | 1992 | 99 | 1 hours 39 minutes | 
| Ba Sắc Màu: Đỏ | Krzysztof Kieslowski | 1994 | 99 | 1 hours 39 minutes | 
| 400 Cú Đấm | François Truffaut | 1959 | 99 | 1 hours 39 minutes | 
| Một Nắm Đô La | Sergio Leone | 1964 | 99 | 1 hours 39 minutes | 
| Forbidden Planet | Fred M\. Wilcox | 1956 | 98 | 1 hours 38 minutes | 
| El espíritu de la colmena | Víctor Erice | 1973 | 98 | 1 hours 38 minutes | 
| Cô Dâu Công Chúa | Rob Reiner | 1987 | 98 | 1 hours 38 minutes | 
| Tâm trạng khi yêu | Kar\-Wai Wong | 2000 | 98 | 1 hours 38 minutes | 
| La haine | Mathieu Kassovitz | 1995 | 98 | 1 hours 38 minutes | 
| Thị Trấn Fargo | Joel Coen | 1996 | 98 | 1 hours 38 minutes | 
| Bí Kíp Luyện Rồng | Dean DeBlois | 2010 | 98 | 1 hours 38 minutes | 
| Rô\-bốt Biết Yêu | Andrew Stanton | 2008 | 98 | 1 hours 38 minutes | 
| Mặt Trăng | Duncan Jones | 2009 | 97 | 1 hours 37 minutes | 
| Hội Điểm Tâm | John Hughes | 1985 | 97 | 1 hours 37 minutes | 
| Giấc Mơ Kỳ Lạ | Vincent Paronnaud | 2007 | 96 | 1 hours 36 minutes | 
| Vút Bay | Pete Docter | 2009 | 96 | 1 hours 36 minutes | 
| Rắc Rối Tuổi Teen | Destin Daniel Cretton | 2013 | 96 | 1 hours 36 minutes | 
| Chuyện Tình Manhattan | Woody Allen | 1979 | 96 | 1 hours 36 minutes | 
| Max Điên 2: Hung Thần Xa Lộ | George Miller | 1981 | 96 | 1 hours 36 minutes | 
| 12 Người Đàn Ông Giận Dữ | Sidney Lumet | 1957 | 96 | 1 hours 36 minutes | 
| Phong Ấn Thứ Bảy | Ingmar Bergman | 1957 | 96 | 1 hours 36 minutes | 
| Sweet Smell of Success | Alexander Mackendrick | 1957 | 96 | 1 hours 36 minutes | 
| Đêm Của Những Thây Ma | George A\. Romero | 1968 | 96 | 1 hours 36 minutes | 
| La Belle et la Bête | Jean Cocteau | 1946 | 96 | 1 hours 36 minutes | 
| Stagecoach | John Ford | 1939 | 96 | 1 hours 36 minutes | 
| The Lady Vanishes | Alfred Hitchcock | 1938 | 96 | 1 hours 36 minutes | 
| A Night at the Opera | Sam Wood | 1935 | 96 | 1 hours 36 minutes | 
| Miracle on 34th Street | George Seaton | 1947 | 96 | 1 hours 36 minutes | 
| Cuộc Săn Vàng | Charles Chaplin | 1925 | 95 | 1 hours 35 minutes | 
| Tay Lái Nổi Loạn | Dennis Hopper | 1969 | 95 | 1 hours 35 minutes | 
| Tiến Sĩ Strangelove | Stanley Kubrick | 1964 | 95 | 1 hours 35 minutes | 
| Ngọn Đuốc Của Quỷ | Orson Welles | 1958 | 95 | 1 hours 35 minutes | 
| Pink Floyd: The Wall | Alan Parker | 1982 | 95 | 1 hours 35 minutes | 
| Những Mảnh Ghép Cảm Xúc | Pete Docter | 2015 | 95 | 1 hours 35 minutes | 
| When Harry Met Sally\.\.\. | Rob Reiner | 1989 | 95 | 1 hours 35 minutes | 
| Ba Sắc Màu: Xanh | Krzysztof Kieslowski | 1993 | 94 | 1 hours 34 minutes | 
| Lady Bird: Tuổi Nổi Loạn | Greta Gerwig | 2017 | 94 | 1 hours 34 minutes | 
| Man on Wire | James Marsh | 2008 | 94 | 1 hours 34 minutes | 
| Ngày Thiên Đường | Terrence Malick | 1978 | 94 | 1 hours 34 minutes | 
| Life of Brian | Terry Jones | 1979 | 94 | 1 hours 34 minutes | 
| Badlands | Terrence Malick | 1973 | 94 | 1 hours 34 minutes | 
| Nosferatu | F\.W\. Murnau | 1922 | 94 | 1 hours 34 minutes | 
| Sunrise: A Song of Two Humans | F\.W\. Murnau | 1927 | 94 | 1 hours 34 minutes | 
| Cảnh Sát Trưởng Da Đen | Mel Brooks | 1974 | 93 | 1 hours 33 minutes | 
| Annie Hall | Woody Allen | 1977 | 93 | 1 hours 33 minutes | 
| Hachiko: Chú Chó Trung Thành | Lasse Hallström | 2009 | 93 | 1 hours 33 minutes | 
| Song of the Sea | Tomm Moore | 2014 | 93 | 1 hours 33 minutes | 
| Lối Sống Đồi Trụy | Danny Boyle | 1996 | 93 | 1 hours 33 minutes | 
| Rushmore | Wes Anderson | 1998 | 93 | 1 hours 33 minutes | 
| Câu Chuyện Đồ Chơi 2 | John Lasseter | 1999 | 92 | 1 hours 32 minutes | 
| Công Ty Quái Vật | Pete Docter | 2001 | 92 | 1 hours 32 minutes | 
| Mary Và Max | Adam Elliot | 2009 | 92 | 1 hours 32 minutes | 
| Ngày Trái Đất Ngừng Quay | Robert Wise | 1951 | 92 | 1 hours 32 minutes | 
| Đêm Của Kẻ Đi Săn | Charles Laughton | 1955 | 92 | 1 hours 32 minutes | 
| His Girl Friday | Howard Hawks | 1940 | 92 | 1 hours 32 minutes | 
| The Thin Man | W\.S\. Van Dyke | 1934 | 91 | 1 hours 31 minutes | 
| Sát Nhân Halloween | John Carpenter | 1978 | 91 | 1 hours 31 minutes | 
| Chén Thánh Phiêu Lưu Ký | Terry Gilliam | 1975 | 91 | 1 hours 31 minutes | 
| Harold and Maude | Hal Ashby | 1971 | 91 | 1 hours 31 minutes | 
| Smultronstället | Ingmar Bergman | 1957 | 91 | 1 hours 31 minutes | 
| Cuộc Chiến Không Trọng Lực | Alfonso Cuarón | 2013 | 91 | 1 hours 31 minutes | 
| Anomalisa | Duke Johnson | 2015 | 90 | 1 hours 30 minutes | 
| Điệu Valse Của Ký Ức | Ari Folman | 2008 | 90 | 1 hours 30 minutes | 
| Gã Chằn Tinh Tốt Bụng | Andrew Adamson | 2001 | 90 | 1 hours 30 minutes | 
| Aladdin | Ron Clements | 1992 | 90 | 1 hours 30 minutes | 
| Sullivan's Travels | Preston Sturges | 1941 | 90 | 1 hours 30 minutes | 
| Kẻ Cắp Xe Đạp | Vittorio De Sica | 1948 | 89 | 1 hours 29 minutes | 
| Mộ Đom Đóm | Isao Takahata | 1988 | 89 | 1 hours 29 minutes | 
| Hãy Đứng Bên Tôi | Rob Reiner | 1986 | 89 | 1 hours 29 minutes | 
| Những Đứa Trẻ Thiên Đường | Majid Majidi | 1997 | 89 | 1 hours 29 minutes | 
| Vua Sư Tử | Roger Allers | 1994 | 88 | 1 hours 28 minutes | 
| Bin\-jip | Kim Ki\-duk | 2004 | 88 | 1 hours 28 minutes | 
| Lã Sinh Môn | Akira Kurosawa | 1950 | 88 | 1 hours 28 minutes | 
| The Magnificent Ambersons | Orson Welles | 1942 | 88 | 1 hours 28 minutes | 
| Laura | Otto Preminger | 1944 | 88 | 1 hours 28 minutes | 
| Cậu Bé Người Gỗ | Norman Ferguson | 1940 | 88 | 1 hours 28 minutes | 
| Đường Tới Vinh Quang | Stanley Kubrick | 1957 | 88 | 1 hours 28 minutes | 
| Chuyến Bay Tình Yêu | Jim Abrahams | 1980 | 88 | 1 hours 28 minutes | 
| Đêm Của Một Ngày Vất Vả | Richard Lester | 1964 | 87 | 1 hours 27 minutes | 
| Thời Đại Tân Kỳ | Charles Chaplin | 1936 | 87 | 1 hours 27 minutes | 
| Ánh Sáng Đô Thị | Charles Chaplin | 1931 | 87 | 1 hours 27 minutes | 
| Gia Đình Nhà Cáo | Wes Anderson | 2009 | 87 | 1 hours 27 minutes | 
| Neon Genesis Evangelion: The End of Evangelion | Hideaki Anno | 1997 | 87 | 1 hours 27 minutes | 
| Người Máy Khổng Lồ | Brad Bird | 1999 | 86 | 1 hours 26 minutes | 
| Hàng Xóm Của Tôi Là Totoro | Hayao Miyazaki | 1988 | 86 | 1 hours 26 minutes | 
| The 39 Steps | Alfred Hitchcock | 1935 | 86 | 1 hours 26 minutes | 
| Brief Encounter | David Lean | 1945 | 86 | 1 hours 26 minutes | 
| Trưa Hè Nóng Bỏng | Fred Zinnemann | 1952 | 85 | 1 hours 25 minutes | 
| Persona | Ingmar Bergman | 1966 | 85 | 1 hours 25 minutes | 
| Ma Cây 2: Bình Minh Chết Chóc | Sam Raimi | 1987 | 84 | 1 hours 24 minutes | 
| Người Đẹp Và Quái Vật | Gary Trousdale | 1991 | 84 | 1 hours 24 minutes | 
| Kôkaku kidôtai | Mamoru Oshii | 1995 | 83 | 1 hours 23 minutes | 
| Nàng Bạch Tuyết và Bảy Chú Lùn | William Cottrell | 1937 | 83 | 1 hours 23 minutes | 
| This Is Spinal Tap | Rob Reiner | 1984 | 82 | 1 hours 22 minutes | 
| Câu Chuyện Đồ Chơi | John Lasseter | 1995 | 81 | 1 hours 21 minutes | 
| Les triplettes de Belleville | Sylvain Chomet | 2003 | 80 | 1 hours 20 minutes | 
| Trước Lúc Hoàng Hôn | Richard Linklater | 2004 | 80 | 1 hours 20 minutes | 
| Invasion of the Body Snatchers | Don Siegel | 1956 | 80 | 1 hours 20 minutes | 
| Cậu Bé Rừng Xanh | Wolfgang Reitherman | 1967 | 78 | 1 hours 18 minutes | 
| Xe Lửa Tình Yêu | Clyde Bruckman | 1926 | 78 | 1 hours 18 minutes | 
| Das Cabinet des Dr\. Caligari | Robert Wiene | 1920 | 76 | 1 hours 16 minutes | 
| Đêm Kinh Hoàng Trước Giáng Sinh | Henry Selick | 1993 | 76 | 1 hours 16 minutes | 
| Bronenosets Potemkin | Sergei Eisenstein | 1925 | 75 | 1 hours 15 minutes | 
| Bride of Frankenstein | James Whale | 1935 | 75 | 1 hours 15 minutes | 
| Cô Bé Lọ Lem | Clyde Geronimi | 1950 | 74 | 1 hours 14 minutes | 
| Frankenstein | James Whale | 1931 | 70 | 1 hours 10 minutes | 
| Duck Soup | Leo McCarey | 1933 | 69 | 1 hours 9 minutes | 
| Chú Nai Bambi | James Algar | 1942 | 69 | 1 hours 9 minutes | 
| Đứa Trẻ | Charles Chaplin | 1921 | 68 | 1 hours 8 minutes | 
| Freaks | Tod Browning | 1932 | 64 | 1 hours 4 minutes | 
| Sherlock Jr\. | Buster Keaton | 1924 | 45 | 0 hours 45 minutes |