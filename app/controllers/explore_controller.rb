class ExploreController < ApplicationController
  def index
    @quizzes = Quiz.order(:title)
  end
end
