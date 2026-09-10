

SELECT
    user_id,
    movie_id,
    rating,
    rating_timestamp
FROM MOVIELENS.DEV.src_rating
WHERE rating IS NOT NULL


    AND rating_timestamp > (SELECT MAX(rating_timestamp) FROM MOVIELENS.DEV.fct_rating)
