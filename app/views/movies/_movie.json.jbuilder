json.id movie.id
json.name movie.name
json.image_url movie.image_url
json.category movie.category
json.year movie.year

json.favorite_id current_user&.favorites.find_by(movie_id: movie.id)&.id
