SELECT 
    tArtist.primaryName, 
    tFilm.primaryTitle,
    COUNT(DISTINCT tJob.category) as Nb_Roles
FROM tArtist
INNER JOIN tJob 
    ON tArtist.idArtist = tJob.idArtist
INNER JOIN tFilm 
    ON tJob.idFilm = tFilm.idFilm
GROUP BY 
    tArtist.idArtist, 
    tArtist.primaryName, 
    tFilm.idFilm, 
    tFilm.primaryTitle
HAVING 
    COUNT(DISTINCT tJob.category) > 1;