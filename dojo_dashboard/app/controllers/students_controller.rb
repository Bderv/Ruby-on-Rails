class StudentsController < ApplicationController
  def index
    @dojo = Dojo.find(params[:dojo_id])
    @students = @dojo.students
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.where.not(id: params[:dojo_id])
  end

  def create
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.create( student_params )
    redirect_to "/dojos/#{@dojo.id}/students"
  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @cohort = @dojo.students.where("date(created_at)=?", @student.created_at.to_date).where.not(id: @student.id)
  end

  def edit
    @dojo = Dojo.find(params[:dojo_id])
    @dojos = Dojo.where.not(id: params[:dojo_id])
    @student = Student.find(params[:id])
  end

  def update
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @student = Student.update(params[:id], student_params)
    redirect_to "/dojos/#{@dojo.id}/students/#{@student.id}"
  end

  def destroy
    @dojo = Dojo.find(params[:dojo_id])
    if @student = Student.find(params[:id])
      @student.destroy
      redirect_to "/dojos/#{@dojo.id}/students"
    end
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end

end
