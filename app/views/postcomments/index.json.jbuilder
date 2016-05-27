json.array!(@postcomments) do |postcomment|
  json.extract! postcomment, :id, :post_id, :body, :user_id, :—skip-stylesheets
  json.url postcomment_url(postcomment, format: :json)
end
