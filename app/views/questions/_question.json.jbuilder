json.extract! question, :id, :question, :option_a, :option_b, :option_c, :answer, :created_at, :updated_at
json.url question_url(question, format: :json)
