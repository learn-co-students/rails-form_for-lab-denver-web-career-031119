class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = finder
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = finder
  end

  def update
    @student = finder
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  def finder
    @student = Student.find(params[:id])
  end
end
