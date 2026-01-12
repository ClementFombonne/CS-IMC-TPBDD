SELECT primaryName, COUNT(DISTINCT category)
FROM tArtist
INNER JOIN tJob ON tArtist.idArtist = tJob.idArtist
GROUP BY tArtist.idArtist, primaryName
HAVING COUNT(DISTINCT category) > 1