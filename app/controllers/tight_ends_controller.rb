class TightEndsController < ApplicationController
  before_action :set_tight_end, only: [:show, :edit, :update, :destroy]

  # GET /tight_ends
  # GET /tight_ends.json
  def index
    @tight_ends = TightEnd.all
  end

  # GET /tight_ends/1
  # GET /tight_ends/1.json
  def show
  end

  # GET /tight_ends/new
  def new
    @tight_end = TightEnd.new
  end

  # GET /tight_ends/1/edit
  def edit
  end

  # POST /tight_ends
  # POST /tight_ends.json
  def create
    @tight_end = TightEnd.new(tight_end_params)

    respond_to do |format|
      if @tight_end.save
        format.html { redirect_to @tight_end, notice: 'Tight end was successfully created.' }
        format.json { render :show, status: :created, location: @tight_end }
      else
        format.html { render :new }
        format.json { render json: @tight_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tight_ends/1
  # PATCH/PUT /tight_ends/1.json
  def update
    respond_to do |format|
      if @tight_end.update(tight_end_params)
        format.html { redirect_to @tight_end, notice: 'Tight end was successfully updated.' }
        format.json { render :show, status: :ok, location: @tight_end }
      else
        format.html { render :edit }
        format.json { render json: @tight_end.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tight_ends/1
  # DELETE /tight_ends/1.json
  def destroy
    @tight_end.destroy
    respond_to do |format|
      format.html { redirect_to tight_ends_url, notice: 'Tight end was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tight_end
      @tight_end = TightEnd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tight_end_params
      params.require(:tight_end).permit(:player_name, :week, :touchdowns, :yards, :receptions)
    end
end
