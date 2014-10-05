json.array!(@simple_articles) do |simple_article|
  json.extract! simple_article, :id, :name, :short_description, :full_description, :published
  json.url simple_article_url(simple_article, format: :json)
end
