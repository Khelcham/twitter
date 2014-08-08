class MikropostsController < ApplicationController
  before_action :set_mikropost, only: [:show, :edit, :update, :destroy]

  # GET /mikroposts
  # GET /mikroposts.json
  def index
    @mikroposts = Mikropost.all
  end

  # GET /mikroposts/1
  # GET /mikroposts/1.json
  def show
  end

  # GET /mikroposts/new
  def new
    @mikropost = Mikropost.new
  end

  # GET /mikroposts/1/edit
  def edit
  end

  # POST /mikroposts
  # POST /mikroposts.json
  def create
    @mikropost = Mikropost.new(mikropost_params)

    respond_to do |format|
      if @mikropost.save
        format.html { redirect_to @mikropost, notice: 'Mikropost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @mikropost }
      else
        format.html { render action: 'new' }
        format.json { render json: @mikropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mikroposts/1
  # PATCH/PUT /mikroposts/1.json
  def update
    respond_to do |format|
      if @mikropost.update(mikropost_params)
        format.html { redirect_to @mikropost, notice: 'Mikropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mikropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mikroposts/1
  # DELETE /mikroposts/1.json
  def destroy
    @mikropost.destroy
    respond_to do |format|
      format.html { redirect_to mikroposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mikropost
      @mikropost = Mikropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mikropost_params
      params.require(:mikropost).permit(:content, :user_id)
    end
end
