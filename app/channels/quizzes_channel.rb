class QuizzesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "quizzes"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
