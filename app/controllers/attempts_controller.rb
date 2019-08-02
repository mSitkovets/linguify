class AttemptsController < ApplicationController
  before_action :set_attempt, only: [:show, :edit, :update, :destroy]

  # GET /attempts
  # GET /attempts.json
  def index
    @recent_attempts = Attempt.joins(:quiz).pluck('quizzes.title', :user_id, :score).last(10)
    @average_score_per_user = Attempt.select(:user_id).joins("INNER JOIN users ON attempts.user_id = users.id").group(:username).average(:score).sort_by{|username, avg_score| avg_score}.reverse
    @average_score_per_quiz = Attempt.select(:title).joins("INNER JOIN quizzes ON quizzes.id = attempts.quiz_id").group(:title).average(:score).sort_by{|title, avg_score| avg_score}.reverse.first(3)
  end

  # GET /attempts/1
  # GET /attempts/1.json
  def show
  end

  # GET /attempts/new
  def new
    @attempt = Attempt.new(new_attempt_params.merge(user_id: session[:user_id]))
    
    @answers = []
    @attempt.quiz.questions.each do |question|
      @answers << { question.option_a => 0, question.option_b => 0, question.option_c => 0, question.answer => 1 }.to_a.shuffle.to_h  
    end

    @attempt.save!
    @attempt.reload
    @quiz = @attempt.quiz
  end 

  # GET /attempts/1/edit
  def edit
  end

  # PATCH/PUT /attempts/1
  # PATCH/PUT /attempts/1.json
  def update
    respond_to do |format|
      # answer = finished_attempt_params
      # score = Attempt.calcScore(answer, @attempt.quiz.questions)
      
      count = 1
      @user_answers = params
      @user_answers["question"].each do |question|
        Answer.create(attempt_id: @user_answers["id"], question_id: count, user_answer: question[1]["answer"])
      end
      score = Attempt.calcScore(@attempt.answers, @attempt.quiz.questions)
      

      if @attempt.update(score: score)
        format.html { redirect_to quiz_attempt_url }
      else
        format.html { render :edit }
        format.json { render json: @attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attempts/1
  # DELETE /attempts/1.json
  def destroy
    @attempt.destroy
    respond_to do |format|
      format.html { redirect_to quiz_attempts_url, notice: 'Attempt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attempt
      @attempt = Attempt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_attempt_params
      params.permit(:quiz_id, :user_id)
    end

    def finished_attempt_params
      # params.permit(answers: {})
      params.permit("answers")
      # binding.pry
    end
end
