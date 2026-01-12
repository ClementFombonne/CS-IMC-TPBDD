SELECT dbo.tArtist.primaryName, COUNT(dbo.tArtist.idArtist)
FROM dbo.tArtist
INNER JOIN dbo.tJob ON dbo.tArtist.idArtist = dbo.tJob.idArtist
WHERE category = 'acted in'
GROUP BY dbo.tArtist.idArtist, dbo.tArtist.primaryName
HAVING COUNT(dbo.tArtist.idArtist) > 1