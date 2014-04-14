class HashtagsController < ApplicationController
  before_action :set_hashtag, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @hashtags = Hashtag.new
  end

  # GET /users/new
  def new
    @hashtag = Hashtag.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @hashtag = Hashtag.new(hashtag_params)

    respond_to do |format|
      if @hashtag.save
        format.html { redirect_to @hashtag.post, notice: 'Link foi adicionado com sucesso!' }
        
      else
        format.html { redirect_to @hashtag.post, alert: @hashtag.errors.full_messages.first }
        format.json { render json: @hashtag.errors, status: :unprocessable_entity }
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
    @hashtag.destroy
    respond_to do |format|
      format.html { redirect_to @hashtag.post, notice: "Link deletado com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hashtag
      @hashtag = Hashtag.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def hashtag_params
      params.require(:hashtag).permit(:nome, :link, :post_id)
    end
end
