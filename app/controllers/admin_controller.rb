class AdminController < ApplicationController
  def index
    @total_quizzes = Quiz.count
  end
end
