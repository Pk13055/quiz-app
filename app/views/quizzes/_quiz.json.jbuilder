json.extract! quiz, :id, :title, :desc, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
