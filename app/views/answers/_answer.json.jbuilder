json.extract! answer, :id, :attempt_id, :question_id, :user_answer, :created_at, :updated_at
json.url answer_url(answer, format: :json)
