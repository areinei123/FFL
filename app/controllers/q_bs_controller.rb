class QBsController < ApplicationController
  before_action :set_qb, only: [:show, :edit, :update, :destroy]

  # GET /qbs
  # GET /qbs.json
  def index
    @qbs = Qb.all
  end

  # GET /qbs/1
  # GET /qbs/1.json
  def show
  end

  # GET /qbs/new
  def new
    @qb = Qb.new
  end

  # GET /qbs/1/edit
  def edit
  end

  # POST /qbs
  # POST /qbs.json
  def create
    @qb = Qb.new(qb_params)

    respond_to do |format|
      if @qb.save
        format.html { redirect_to @qb, notice: 'Qb was successfully created.' }
        format.json { render :show, status: :created, location: @qb }
      else
        format.html { render :new }
        format.json { render json: @qb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qbs/1
  # PATCH/PUT /qbs/1.json
  def update
    respond_to do |format|
      if @qb.update(qb_params)
        format.html { redirect_to @qb, notice: 'Qb was successfully updated.' }
        format.json { render :show, status: :ok, location: @qb }
      else
        format.html { render :edit }
        format.json { render json: @qb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qbs/1
  # DELETE /qbs/1.json
  def destroy
    @qb.destroy
    respond_to do |format|
      format.html { redirect_to qbs_url, notice: 'Qb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qb
      @qb = Qb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qb_params
      params.require(:qb).permit(:player_name, :week, :pass_attempts, :pass_completes, :touchdowns, :interceptions, :fumbles)
    end
end
