class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy, :new_comment]
  before_action :set_vehicle_comment_template, only: [:new_comment]

  # GET /vehicles
  # GET /vehicles.json
  def index
    @vehicles = Vehicle.all
  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
    @templates = VehicleCommentTemplate.all
  end

  # GET /vehicles/new
  def new
    @vehicle = Vehicle.new
  end

  def new_comment
    vehicle_comment = VehicleComment.new
    vehicle_comment.vehicle = @vehicle
    vehicle_comment.template = @vehicle_comment_template
    vehicle_comment.owner = current_user
    respond_to do |format|
      if vehicle_comment.save
        format.html { redirect_to @vehicle, notice: 'Comment added.' }
      end
    end
  end

  # GET /vehicles/1/edit
  def edit
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      id = params[:id].present? ? params[:id] : params[:vehicle_id]
      @vehicle = Vehicle.find(id)
    end

    def set_vehicle_comment_template
      @vehicle_comment_template = VehicleCommentTemplate.find(params[:ref])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_params
      params.require(:vehicle).permit(:license_number, :province, :brand, :model, :year, :vehicle_type)
    end
end
