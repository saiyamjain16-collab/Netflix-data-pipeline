with src_movies as (
    select * from {{ ref('src_movie') }}
)
SELECT
    movie_id,
    INITCAP(TRIM(title)) AS movie_title,
    SPLIT(genres, '|') AS genre_Array,
    genres
FROM src_movies