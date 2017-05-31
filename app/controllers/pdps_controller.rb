class PdpsController < ApplicationController
  before_action :set_pdp, only: [:show, :edit, :update, :destroy, :review_complete]
  before_action :set_student_pdp, only: [:review]
  # GET /pdps
  # GET /pdps.json
  def index
    @pdps = Pdp.all
  end

  # GET /pdps/1
  # GET /pdps/1.json
  def show
  end

  # GET /pdps/new
  def new
    @pdp = Pdp.new
    @semesters = Semester.all
  end

  # GET /pdps/1/edit
  def edit
  end

  # POST /pdps
  # POST /pdps.json
  def create
    # logger.debug "PDP attributes hash: #{pdp_params.attributes.inspect}"
    # if (params[:student_id].nil?)
    #   @student = Student.find(pdp_params[:student_id])
    # else
      @student = Student.find(params[:student_id])
    # end
    # @instructor = Instructor.find(params[:instructor_id])
    # DO ERROR CHECKING?
    # @pdp = Pdp.new(pdp_params)
    @pdp = @student.pdps.create(pdp_params)
    if (!pdp_params[:acuity_id].nil?)
      @pdp.update_column(:id, pdp_params[:acuity_id])
    end
    # redirect_to student_path(@student)
    redirect_to :root

    # respond_to do |format|
    #   if @pdp.save
    #     format.html { redirect_to @pdp, notice: 'Pdp was successfully created.' }
    #     format.json { render :show, status: :created, location: @pdp }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @pdp.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /pdps/1
  # PATCH/PUT /pdps/1.json
  def update
    respond_to do |format|
      if @pdp.update(pdp_params)
        format.html { redirect_to @pdp, notice: 'Pdp was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdp }
      else
        format.html { render :edit }
        format.json { render json: @pdp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdps/1
  # DELETE /pdps/1.json
  def destroy
    @pdp.destroy
    respond_to do |format|
      format.html { redirect_to pdps_url, notice: 'Pdp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def report
    @pdp = Pdp.new

    @student = Student.find(params[:student_id])
  end

  def review

  end

  def review_complete
    if @pdp.update(pdp_params)
      UserMailer.review_complete(@pdp).deliver_now
      redirect_to @pdp, notice: 'Review of PDP complete.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pdp
      @pdp = Pdp.find(params[:id])
    end

    def set_student_pdp
      @pdp = Pdp.find(params[:pdp_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pdp_params
      params.require(:pdp).permit(:student_id, :instructor_id, :appointment, :review_student, :review_staff, :preview_student, :preview_staff, :notes, :agreed, :acuity_id, :scan)
    end
end
