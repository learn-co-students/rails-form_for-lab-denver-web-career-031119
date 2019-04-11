class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
    redirect_to Student.create(student_params)
  end

  def edit
    get_student
  end

  def show
    get_student
  end

  def update
    @student = get_student
    @student.update(student_params)
    redirect_to @student
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end
end
