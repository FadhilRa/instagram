json.extract! post, :id, :caption, :longitute, :latitude, :user_id, :allow_comments, :show_likes_count, :created_at, :updated_at
json.url post_url(post, format: :json)
