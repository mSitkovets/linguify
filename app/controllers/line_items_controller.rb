class LineItemsController < ApplicationController
  include CurrentList
  skip_before_action :authorize, only: :create
  before_action :set_list, only: [:create]
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /line_items
  # GET /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1
  # GET /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items
  # POST /line_items.json
  def create
    
    @quiz = Quiz.find(params[:quiz_id])
    @quiz.saved = true
    @quiz.save!
    @line_item = @list.add_quiz(@quiz)

    respond_to do |format|
      if @line_item.save
        format.js { @current_item = @line_item }
        format.html { redirect_to explore_index_url }
        format.json { render :show, status: :created, location: @line_item }
      else
        format.html { render :new }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_items/1
  # PATCH/PUT /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    @line_item.destroy
    @line_item.quiz.saved = false
    @line_item.quiz.save!
    respond_to do |format|
      format.html { redirect_to explore_index_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def line_item_params
      params.require(:line_item).permit(:quiz_id)
    end
end
