class StudentsController < ApplicationController
	def index
	@student = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
    redirect_to @student
  else
    render 'new'
  end

  end
    
    def show
        @student = Student.find(params[:id])
    end

    private
  def student_params
    params.require(:student).permit(:name, :phonenumber, :email, :qualification, :skills)
  end

	def edit
		@student = Student.find(params[:id])
	end
	def update
		@student = Student.find(params[:id])
		@s= @student.update_attributes(student_params)
		if @s
           redirect_to student_path(@student)
       else
           redirect_to :back
       end  
	end
  def delete
    @student = Student.find(params[:id])
    @student.destroy
  end

end


