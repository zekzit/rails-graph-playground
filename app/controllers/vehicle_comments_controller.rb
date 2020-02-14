class VehicleCommentsController < ApplicationController
  before_action :set_vehicle_comment, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_comments
  # GET /vehicle_comments.json
  def index
    @vehicle_comments = VehicleComment.all
  end

  # GET /vehicle_comments/1
  # GET /vehicle_comments/1.json
  def show
  end

  # GET /vehicle_comments/new
  def new
    @vehicle_comment = VehicleComment.new
  end

  # GET /vehicle_comments/1/edit
  def edit
  end

  # POST /vehicle_comments
  # POST /vehicle_comments.json
  def create
    @vehicle_comment = VehicleComment.new(vehicle_comment_params)

    respond_to do |format|
      if @vehicle_comment.save
        format.html { redirect_to @vehicle_comment, notice: 'Vehicle comment was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_comment }
      else
        format.html { render :new }
        format.json { render json: @vehicle_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_comments/1
  # PATCH/PUT /vehicle_comments/1.json
  def update
    respond_to do |format|
      if @vehicle_comment.update(vehicle_comment_params)
        format.html { redirect_to @vehicle_comment, notice: 'Vehicle comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_comment }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_comments/1
  # DELETE /vehicle_comments/1.json
  def destroy
    @vehicle_comment.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_comments_url, notice: 'Vehicle comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_comment
      @vehicle_comment = VehicleComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_comment_params
      params.fetch(:vehicle_comment, {})
    end
end
