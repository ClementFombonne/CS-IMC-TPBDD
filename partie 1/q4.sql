SELECT TOP 1 WITH TIES birthYear,COUNT(birthYear) as birthYear_count
FROM dbo.tArtist
INNER JOIN dbo.tJob ON dbo.tJob.idArtist = dbo.tArtist.idArtist
WHERE birthYear !=0 AND category = 'acted in'
GROUP BY birthYear 
ORDER BY COUNT(birthYear) DESC ;