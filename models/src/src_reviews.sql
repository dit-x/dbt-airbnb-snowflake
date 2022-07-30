-- import raw_listings
WITH raw_reviews AS (
        {# SELECT * FROM {{ source('airbnb', 'revies') }} #}
        SELECT * FROM AIRBNB.RAW.RAW_REVIEWS
)
SELECT 
   listing_id,
   date AS review_date,
   reviewer_name,
   comments AS review_comments,
   sentiment AS review_sentiment
FROM raw_reviews
