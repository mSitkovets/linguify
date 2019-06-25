class ExploreController < ApplicationController
  include CurrentList
  before_action :set_list
  skip_before_action :authorize
  def index
    @quizzes = Quiz.order(:title)
  end
end
