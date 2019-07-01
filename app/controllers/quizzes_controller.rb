class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
    @quizzes_per_language = Quiz.select(:language_learning).group(:language_learning).count(:language_learning)
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user_id = session[:user_id]

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to explore_index_url(locale: I18n.locale), notice:
          I18n.t('.success')  }
        format.json { render :show, status: :created, location: @quiz }
      else
        puts @quiz.errors.full_messages
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to @quiz, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }

        @quizzes = Quiz.all 
        ActionCable.server.broadcast 'quizzes',
          html: render_to_string('explore/index', layout: false)
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def who_created
    @quiz = Quiz.find(params[:id])
    @latest_quiz = Quiz.last 
    if stale?(@latest_quiz)
      respond_to do |format| 
        format.atom
      end 
    end   
  end

  def question_params
    params.require(:question).permit(:question, :option_a, :option_b, :option_c, :answer) 
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title, :description, :user_id, :difficulty_level, :language_learning, :instruction_language)
    end
end
