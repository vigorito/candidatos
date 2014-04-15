class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @likes = Like.new
  end

  # GET /users/new
  def new
    @like = Like.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @like = Like.new(like_params)

    respond_to do |format|
      if @like.save
        format.html { redirect_to @like.post }
        
      else
        format.html { redirect_to @like.post, alert: @like.errors.full_messages.first }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @like.destroy
    respond_to do |format|
      format.html { redirect_to @like.post }
      format.json { head :no_content }
    end  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def like_params
      params.require(:like).permit(:valor, :post_id, :user_id)
    end
end
