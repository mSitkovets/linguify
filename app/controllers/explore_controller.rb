class ExploreController < ApplicationController
  include CurrentList
  before_action :set_list
  skip_before_action :authorize
  skip_before_action :verify_authenticity_token
  def index
    if params[:set_locale]
      redirect_to explore_index_url(locale: params[:set_locale]) 
    else
      @quizzes = Quiz.order(:title) 
    end
  end
end
