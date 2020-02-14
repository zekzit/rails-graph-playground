class VehicleCommentTemplatesController < ApplicationController
  before_action :set_vehicle_comment_template, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_comment_templates
  # GET /vehicle_comment_templates.json
  def index
    @vehicle_comment_templates = VehicleCommentTemplate.all
  end

  # GET /vehicle_comment_templates/1
  # GET /vehicle_comment_templates/1.json
  def show
  end

  # GET /vehicle_comment_templates/new
  def new
    @vehicle_comment_template = VehicleCommentTemplate.new
  end

  # GET /vehicle_comment_templates/1/edit
  def edit
  end

  # POST /vehicle_comment_templates
  # POST /vehicle_comment_templates.json
  def create
    @vehicle_comment_template = VehicleCommentTemplate.new(vehicle_comment_template_params)

    respond_to do |format|
      if @vehicle_comment_template.save
        format.html { redirect_to vehicle_comment_templates_path, notice: 'Vehicle comment template was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_comment_template }
      else
        format.html { render :new }
        format.json { render json: @vehicle_comment_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_comment_templates/1
  # PATCH/PUT /vehicle_comment_templates/1.json
  def update
    respond_to do |format|
      if @vehicle_comment_template.update(vehicle_comment_template_params)
        format.html { redirect_to vehicle_comment_templates_path, notice: 'Vehicle comment template was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_comment_template }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_comment_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_comment_templates/1
  # DELETE /vehicle_comment_templates/1.json
  def destroy
    @vehicle_comment_template.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_comment_templates_url, notice: 'Vehicle comment template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_comment_template
      @vehicle_comment_template = VehicleCommentTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vehicle_comment_template_params
      params.require(:vehicle_comment_template).permit(:score, :comment)
    end
end
