select * from {{ref("fct_reviews")}}
left join {{ref("dim_listings_cleansed")}}
using (listing_id)
where review_date < created_at