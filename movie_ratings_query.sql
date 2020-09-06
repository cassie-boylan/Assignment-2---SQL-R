SELECT m.title as Movie_Title, r.rating as Viewer_Rating, m.genre as Movie_Genre, v.firstname as Viewer, v.gender as Gender, v.preferred_genre as Viewer_Favorite_Genre
FROM ratings as r
JOIN movies as m ON r.movie_id = m.id
JOIN viewers as v ON r.viewer_id = v.id;
