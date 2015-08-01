class RunningBacksController < ApplicationController
  before_action :set_running_back, only: [:show, :edit, :update, :destroy]

  # GET /running_backs
  # GET /running_backs.json
  def index
    @running_backs = RunningBack.all
  end

  # GET /running_backs/1
  # GET /running_backs/1.json
  def show
  end

  # GET /running_backs/new
  def new
    @running_back = RunningBack.new
  end

  # GET /running_backs/1/edit
  def edit
  end

  # POST /running_backs
  # POST /running_backs.json
  def create
    @running_back = RunningBack.new(running_back_params)

    respond_to do |format|
      if @running_back.save
        format.html { redirect_to @running_back, notice: 'Running back was successfully created.' }
        format.json { render :show, status: :created, location: @running_back }
      else
        format.html { render :new }
        format.json { render json: @running_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /running_backs/1
  # PATCH/PUT /running_backs/1.json
  def update
    respond_to do |format|
      if @running_back.update(running_back_params)
        format.html { redirect_to @running_back, notice: 'Running back was successfully updated.' }
        format.json { render :show, status: :ok, location: @running_back }
      else
        format.html { render :edit }
        format.json { render json: @running_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /running_backs/1
  # DELETE /running_backs/1.json
  def destroy
    @running_back.destroy
    respond_to do |format|
      format.html { redirect_to running_backs_url, notice: 'Running back was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_running_back
      @running_back = RunningBack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def running_back_params
      params.require(:running_back).permit(:player_name, :touchdowns, :yards, :receptions, :week)
    end
end
