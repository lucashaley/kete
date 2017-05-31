class IssuesController < ApplicationController
  before_action :set_issue, only: [:show, :edit, :update, :destroy]
  before_action :set_student, only: [:new, :create, :update]

  # GET /issues
  # GET /issues.json
  def index
    @issues = Issue.all
  end

  # GET /issues/1
  # GET /issues/1.json
  def show
  end

  # GET /issues/new
  def new
    @issue = Issue.new
    @issue.student = @student
  end

  # GET /issues/1/edit
  def edit
  end

  # POST /issues
  # POST /issues.json
  def create
    # student = Student.find(:student_id)

    @issue = @student.issues.create(issue_params)
    # @issue = Issue.new(issue_params)

    # critical issue notice
    if @issue.critical
      UserMailer.critical_notice(@issue).deliver_now
    end

    redirect_to student_path(@student)

    # respond_to do |format|
    #   if @issue.save
    #     format.html { redirect_to @issue, notice: 'Issue was successfully created.' }
    #     format.json { render :show, status: :created, location: @issue }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @issue.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /issues/1
  # PATCH/PUT /issues/1.json
  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to @issue, notice: 'Issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @issue }
      else
        format.html { render :edit }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /issues/1
  # DELETE /issues/1.json
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to issues_url, notice: 'Issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_issue
      @issue = Issue.find(params[:id])
    end

    def set_student
      @student = Student.find(params[:student_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_params
      params.require(:issue).permit(:student_id, :title, :content, :critical, :instructor_id)
    end
end
