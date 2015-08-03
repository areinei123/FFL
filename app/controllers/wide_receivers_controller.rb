class WideReceiversController < ApplicationController
  before_action :set_wide_receiver, only: [:show, :edit, :update, :destroy]

  # GET /wide_receivers
  # GET /wide_receivers.json
  def index
    @wide_receivers = WideReceiver.all
  end

  # GET /wide_receivers/1
  # GET /wide_receivers/1.json
  def show
  end

  # GET /wide_receivers/new
  def new
    @wide_receiver = WideReceiver.new
  end

  # GET /wide_receivers/1/edit
  def edit
  end

  # POST /wide_receivers
  # POST /wide_receivers.json
  def create
    @wide_receiver = WideReceiver.new(wide_receiver_params)

    respond_to do |format|
      if @wide_receiver.save
        format.html { redirect_to @wide_receiver, notice: 'Wide receiver was successfully created.' }
        format.json { render :show, status: :created, location: @wide_receiver }
      else
        format.html { render :new }
        format.json { render json: @wide_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wide_receivers/1
  # PATCH/PUT /wide_receivers/1.json
  def update
    respond_to do |format|
      if @wide_receiver.update(wide_receiver_params)
        format.html { redirect_to @wide_receiver, notice: 'Wide receiver was successfully updated.' }
        format.json { render :show, status: :ok, location: @wide_receiver }
      else
        format.html { render :edit }
        format.json { render json: @wide_receiver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wide_receivers/1
  # DELETE /wide_receivers/1.json
  def destroy
    @wide_receiver.destroy
    respond_to do |format|
      format.html { redirect_to wide_receivers_url, notice: 'Wide receiver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wide_receiver
      @wide_receiver = WideReceiver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wide_receiver_params
      params.require(:wide_receiver).permit(:player_name, :touchdowns, :yards, :receptions, :week)
    end
end
