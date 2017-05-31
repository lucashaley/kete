class WorkshopEnrolmentsController < ApplicationController
  before_action :set_workshop_enrolment, only: [:show, :edit, :update, :destroy]

  # GET /workshop_enrolments
  # GET /workshop_enrolments.json
  def index
    @workshop_enrolments = WorkshopEnrolment.all
  end

  # GET /workshop_enrolments/1
  # GET /workshop_enrolments/1.json
  def show
  end

  # GET /workshop_enrolments/new
  def new
    @workshop_enrolment = WorkshopEnrolment.new
  end

  # GET /workshop_enrolments/1/edit
  def edit
  end

  # POST /workshop_enrolments
  # POST /workshop_enrolments.json
  def create
    @workshop_enrolment = WorkshopEnrolment.new(workshop_enrolment_params)

    respond_to do |format|
      if @workshop_enrolment.save
        format.html { redirect_to @workshop_enrolment, notice: 'Workshop enrolment was successfully created.' }
        format.json { render :show, status: :created, location: @workshop_enrolment }
      else
        format.html { render :new }
        format.json { render json: @workshop_enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workshop_enrolments/1
  # PATCH/PUT /workshop_enrolments/1.json
  def update
    respond_to do |format|
      if @workshop_enrolment.update(workshop_enrolment_params)
        format.html { redirect_to @workshop_enrolment, notice: 'Workshop enrolment was successfully updated.' }
        format.json { render :show, status: :ok, location: @workshop_enrolment }
      else
        format.html { render :edit }
        format.json { render json: @workshop_enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workshop_enrolments/1
  # DELETE /workshop_enrolments/1.json
  def destroy
    @workshop_enrolment.destroy
    respond_to do |format|
      format.html { redirect_to workshop_enrolments_url, notice: 'Workshop enrolment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workshop_enrolment
      @workshop_enrolment = WorkshopEnrolment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workshop_enrolment_params
      params.require(:workshop_enrolment).permit(:enrolment, :workshop)
    end
end
