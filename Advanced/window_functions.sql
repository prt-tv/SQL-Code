-- window function

SELECT song, streams,
ROW_NUMBER() OVER(ORDER BY streams DESC) AS rank_num
FROM spotify;

SELECT country, streams , song,
ROW_NUMBER() OVER(PARTITION BY country ORDER BY streams DESC) AS rank_num
FROM spotify
JOIN artists
ON spotify.artist_id =  artists.artist_id;

SELECT *
FROM (
      SELECT country, song , streams,
      ROW_NUMBER() OVER(PARTITION BY country ORDER BY streams DESC) AS rank_num
      FROM spotify
      JOIN artists
      ON spotify.artist_id = artists.artist_id
      )  t
WHERE rank_num =  2;
