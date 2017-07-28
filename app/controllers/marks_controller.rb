class MarksController < ApplicationController
 
  before_action :set_mark, only: [:show, :edit, :update, :destroy]

  # GET /marks
  # GET /marks.json
  def index
    @mark_percent = Mark.where(:user_id => params[:user])

   if current_user.principal? || current_user.faculty?
     @marks = Mark.all

   else
  @marks = Mark.where(user_id: current_user.id)
  end
end

  # GET /marks/1
  # GET /marks/1.json
  def show
   # marks show action dited by suresh
  #dvmcvxcnvicxnvicxivncixvni
  end

  # GET /marks/new
  def new
    if user_signed_in?
      if current_user.principal? || current_user.faculty?
     @mark = Mark.new(user_id: params[:user_id])
     

     else
      redirect_to root_path
     end
  end
end

  # GET /marks/1/edit
  def edit
  end

  # POST /marks
  # POST /marks.json
  def create
    @mark = Mark.new(mark_params)
  
    


    respond_to do |format|
      if @mark.save
        format.html { redirect_to @mark, notice: 'Mark was successfully created.' }
        format.json { render :show, status: :created, location: @mark }
      else
        format.html { render :new }
        format.json { render json: @mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marks/1
  # PATCH/PUT /marks/1.json
  def update
    respond_to do |format|
      if @mark.update(mark_params)
        format.html { redirect_to @mark, notice: 'Mark was successfully updated.' }
        format.json { render :show, status: :ok, location: @mark }
      else
        format.html { render :edit }
        format.json { render json: @mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marks/1
  # DELETE /marks/1.json
  def destroy
    @mark.destroy
    respond_to do |format|
      format.html { redirect_to marks_url, notice: 'Mark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mark
      @mark = Mark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mark_params
      params.require(:mark).permit(:subject1, :subject2, :subject3, :user_id)
    end
end
