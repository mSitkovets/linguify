class ExploreController < ApplicationController
  skip_before_action :authorize
  def index
    @quizzes = Quiz.order(:title)
  end
end
