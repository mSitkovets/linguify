json.extract! quiz, :id, :title, :description, :user_id, :difficulty_level, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
