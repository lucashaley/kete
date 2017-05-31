class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  def index
    @instructors = Instructor.all
  end

  def show

  end

  def new
    @instructor = Instructor.new
  end

  def edit

  end

  def create
    @instructor = Instructor.new(instructor_params)

    if @instructor.save
      redirect_to @instructor
    else
      render 'new'
    end
  end

  def update


    if @instructor.update(instructor_params)
      redirect_to @instructor
    else
      render 'edit'
    end
  end

  def destroy
    @instructor.destroy

    redirect_to instructors_path
  end

  def lookup
    # @instructor = Instructor.find_by_
  end

  private
    def set_instructor
      @instructor = Instructor.find(params[:id])
    end

    def instructor_params
      params.require(:instructor).permit(:first_name, :last_name, :email, :biography, :preferred_name, :image, :title)
    end
end
