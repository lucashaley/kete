class EnrolmentsController < ApplicationController
  before_action :set_enrolment, only: [:show, :edit, :update, :destroy]

  # GET /enrolments
  # GET /enrolments.json
  def index
    @enrolments = Enrolment.all
  end

  # GET /enrolments/1
  # GET /enrolments/1.json
  def show
  end

  # GET /enrolments/new
  def new
    @enrolment = Enrolment.new
  end

  # GET /enrolments/1/edit
  def edit
  end

  # POST /enrolments
  # POST /enrolments.json
  def create

    # @enrolment = Enrolment.new(enrolment_params)
    @student = Student.find_by massey_identification: params[:massey_identification]
    # DO SOME FRIKKING ERROR TESTING HERE
    if @student.present?
      @offering = Offering.find(params[:offering_id])
      @enrolment = Enrolment.new
      @enrolment.update_attribute(:offering, @offering)
      @enrolment.update_attribute(:student, @student)
      redirect_to offering_path(@offering)
    end

  #   respond_to do |format|
  #     if @enrolment.save
  #       format.html { redirect_to @enrolment, notice: 'Enrolment was successfully created.' }
  #       format.json { render :show, status: :created, location: @enrolment }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @enrolment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  end

  # PATCH/PUT /enrolments/1
  # PATCH/PUT /enrolments/1.json
  def update
    respond_to do |format|
      if @enrolment.update(enrolment_params)
        format.html { redirect_to @enrolment, notice: 'Enrolment was successfully updated.' }
        format.json { render :show, status: :ok, location: @enrolment }
      else
        format.html { render :edit }
        format.json { render json: @enrolment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolments/1
  # DELETE /enrolments/1.json
  def destroy
    @enrolment.destroy
    respond_to do |format|
      format.html { redirect_to enrolments_url, notice: 'Enrolment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enrolment
      @enrolment = Enrolment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enrolment_params
      params.require(:enrolment).permit(:offering_id, :student_id, :massey_id)
    end
end
