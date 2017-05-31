class GuestVisitsController < ApplicationController
  before_action :set_guest_visit, only: [:show, :edit, :update, :destroy]

  # GET /guest_visits
  # GET /guest_visits.json
  def index
    @guest_visits = GuestVisit.all
  end

  # GET /guest_visits/1
  # GET /guest_visits/1.json
  def show
  end

  # GET /guest_visits/new
  def new
    @guest_visit = GuestVisit.new
  end

  # GET /guest_visits/1/edit
  def edit
  end

  # POST /guest_visits
  # POST /guest_visits.json
  def create
    @guest_visit = GuestVisit.new(guest_visit_params)

    respond_to do |format|
      if @guest_visit.save
        format.html { redirect_to @guest_visit, notice: 'Guest visit was successfully created.' }
        format.json { render :show, status: :created, location: @guest_visit }
      else
        format.html { render :new }
        format.json { render json: @guest_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guest_visits/1
  # PATCH/PUT /guest_visits/1.json
  def update
    respond_to do |format|
      if @guest_visit.update(guest_visit_params)
        format.html { redirect_to @guest_visit, notice: 'Guest visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_visit }
      else
        format.html { render :edit }
        format.json { render json: @guest_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_visits/1
  # DELETE /guest_visits/1.json
  def destroy
    @guest_visit.destroy
    respond_to do |format|
      format.html { redirect_to guest_visits_url, notice: 'Guest visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_visit
      @guest_visit = GuestVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_visit_params
      params.require(:guest_visit).permit(:guest_lecturer_id, :start, :end, :type, :budget, :parking_needed, :pl_approved, :course_id)
    end
end
