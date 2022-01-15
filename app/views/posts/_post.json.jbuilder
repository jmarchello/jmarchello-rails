json.extract! post, :id, :content, :title, :published_at, :created_at, :updated_at
json.url post_url(post, format: :json)
json.content post.content.to_s
