class GuestLecturersController < ApplicationController
  before_action :set_guest_lecturer, only: [:show, :edit, :update, :destroy]

  # GET /guest_lecturers
  # GET /guest_lecturers.json
  def index
    @guest_lecturers = GuestLecturer.all
    @guest_visits = GuestVisit.all
  end

  # GET /guest_lecturers/1
  # GET /guest_lecturers/1.json
  def show
  end

  # GET /guest_lecturers/new
  def new
    @guest_lecturer = GuestLecturer.new
  end

  # GET /guest_lecturers/1/edit
  def edit
  end

  # POST /guest_lecturers
  # POST /guest_lecturers.json
  def create
    @guest_lecturer = GuestLecturer.new(guest_lecturer_params)

    respond_to do |format|
      if @guest_lecturer.save
        format.html { redirect_to @guest_lecturer, notice: 'Guest lecturer was successfully created.' }
        format.json { render :show, status: :created, location: @guest_lecturer }
      else
        format.html { render :new }
        format.json { render json: @guest_lecturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guest_lecturers/1
  # PATCH/PUT /guest_lecturers/1.json
  def update
    respond_to do |format|
      if @guest_lecturer.update(guest_lecturer_params)
        format.html { redirect_to @guest_lecturer, notice: 'Guest lecturer was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_lecturer }
      else
        format.html { render :edit }
        format.json { render json: @guest_lecturer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_lecturers/1
  # DELETE /guest_lecturers/1.json
  def destroy
    @guest_lecturer.destroy
    respond_to do |format|
      format.html { redirect_to guest_lecturers_url, notice: 'Guest lecturer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_lecturer
      @guest_lecturer = GuestLecturer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_lecturer_params
      params.require(:guest_lecturer).permit(:first_name, :last_name, :email, :website, :cell, :preferred_name, :image)
    end
end
