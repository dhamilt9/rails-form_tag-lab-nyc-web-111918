class StudentsController < ApplicationController

  def index
    @students = Student.all
    render :index
  end

  def show
    byebug
    @student = Student.find(params[:id])
    render :show
  end

  def new
    render :new
  end

  def create
    @student=Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

end
