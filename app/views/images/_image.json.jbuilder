json.extract! image, :id, :name, :file, :av_value, :created_at, :updated_at
json.url image_url(image, format: :json)