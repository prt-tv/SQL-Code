-- Basic query

SELECT * 
FROM spotify;

SELECT artist
FROM spotify;

SELECT *
FROM spotify
WHERE streams > 2000;

SELECT *
FROM spotify
WHERE country = 'B';

SELECT song
FROM spotify
WHERE streams > 1500;

SELECT AVG(streams)
FROM spotify;

SELECT SUM(streams)
FROM spotify;

SELECT COUNT(*) 
FROM spotify;

SELECT artist , SUM(streams)
FROM spotify
GROUP BY artist;

SELECT country , AVG(streams)
FROM spotify
GROUP BY country;

SELECT artist , SUM(streams) AS total_streams
FROM spotify 
GROUP BY artist 
ORDER BY total_streams DESC
LIMIT 3;

SELECT country, AVG(streams) AS low_streams
FROM spotify 
GROUP BY country 
ORDER BY low_streams ASC;

SELECT artist , SUM(streams) AS total_streams
FROM spotify
GROUP BY artist 
HAVING total_streams > 5000;

SELECT country, AVG(streams) AS avg_streams
FROM spotify 
GROUP BY country
HAVING  avg_streams > 2000; 

SELECT country , SUM(streams)  AS total_streams
FROM spotify 
GROUP BY country
ORDER BY total_streams  DESC
LIMIT 2;

SELECT artist , SUM(streams) AS total_streams
FROM spotify
GROUP BY artist 
HAVING total_streams BETWEEN 3000 AND 4000;

SELECT artist , COUNT(*) AS total_song
FROM spotify 
GROUP BY artist 
ORDER BY total_song DESC;

SELECT country,  SUM(streams) AS total_streams
FROM spotify
GROUP BY country
ORDER BY total_streams DESC;

SELECT country , AVG(streams) AS avg_streams
FROM spotify 
GROUP BY country 
ORDER BY avg_streams DESC
LIMIT 1;

SELECT artist , SUM(streams)
FROM spotify
GROUP BY artist 
HAVING total_streams > 6000
ORDER BY total_streams DESC;

SELECT country, COUNT(*) AS num_song
FROM spotify
GROUP BY country
HAVING num_song > 2;

SELECT artist, SUM(streams) AS total_streams
FROM spotify 
GROUP BY artist 
ORDER BY total_streams ASC
LIMIT 2;

SELECT artist, SUM(streams) 
FROM spotify
WHERE contry = 'A'
GROUP BY artist ;

SELECT artist , SUM(streams)
FROM spotify
GROUP BY artist 
HAVING total_streams < 5000;

-----
 SELECT country , SUM(streams) AS total_stream
 FROM spotify
 WHERE country = 'A'
 GROUP BY country 
 ORDER BY total_stream DESC
 LIMIT 2;
 
 SELECT country , AVG(streams) AS avg_stream
 FROM spotify 
 GROUP BY country
 HAVING avg_stream > 2000
 ORDER BY counrty DESC;
 
 SELECT artist, SUM(streams) AS total_stream
 FROM spotify 
 GROUP BY artist 
 ORDER BY total_stream ASC;

SELECT artist , COUNT(*) AS num_Song
FROM spotify
GROUP BY artist
HAVING num_song > 2;

SELECT country, SUM(streams) AS total_streams
FROM spotify
GROUP BY country
ORDER BY total_stream DESC
LIMIT 3;


SELECT artist , SUM(streams) AS total_stream
FROM spotify
GROUP BY artist
ORDER BY total_stream  DESC
LIMIT 2;

SELECT country , AVG(streams) AS  avg_stream
FROM spotify
GROUP BY country 
HAVING avg_stream  >  2000;

SELECT artist , SUM(streams) AS total_stream
FROM spotify
GROUP BY artist 
ORDER BY total_stream ASC
LIMIT 1;

SELECT artist , SUM(streams) AS total_stream
FROM spotify
GROUP BY artist 
HAVING total_stream > 8000;

SELECT country, COUNT(*)
FROM spotify
GROUP BY country 
ORDER BY num_song DESC
LIMIT 3;

------

SELECT artist, AVG(streaams) AS avg_streams
FROM spotify
GROUP BY artist 
ORDER BY avg_streams DESC
LIMIT 1;

SELECT country, SUM(streams) AS total_streams
FROM spotify 
GROUP BY country
HAVING total_streams < 5000;

SELECT artist, COUNT(*) AS num_songs
FROM spotify
GROUP BY artist 
ORDER BY num_songs DESC
LIMIT 1;

SELECT country, SUM(streams) AS total_streams
FROM spotify
WHERE country = 'A'
GROUP BY country
ORDER BY total_streams DESC
LIMIT 2;

SELECT artist, AVG(streams)  AS avg_streams
FROM spotify
GROUP BY artist_name 
HAVING avg_stream BETWEEN 1000 AND 3000;
