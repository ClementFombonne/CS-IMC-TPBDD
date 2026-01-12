SELECT TOP 1 WITH TIES primaryTitle, COUNT(DISTINCT idArtist)
FROM tFilm
INNER JOIN tJob ON tJob.idFilm = tFilm.idFilm
WHERE category = 'acted in'
GROUP BY tJob.idFilm, primaryTitle
ORDER BY COUNT(DISTINCT idArtist) DESC