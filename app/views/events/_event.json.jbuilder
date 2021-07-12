json.extract! event, :id, :end_datetime, :published, :start_datetime, :title, :created_at, :updated_at
json.url event_url(event, format: :json)
