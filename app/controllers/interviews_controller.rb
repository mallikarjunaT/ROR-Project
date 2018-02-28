class InterviewsController < ApplicationController



def new
      @interview = Interview.new
  end

  def index
      @interview = Interview.all
  end
   

   def create
       @s = Interview.create(interview_params)
       if params[:employee_id]
          Interview.new(employee_id: params[:employee_id],
          student_id: params[:student_id],
          time: params[:time],
          status: params[:status]).save!
      end       
   end
   
   def show
       @interview = Interview.find(params[:id])
       #@interview = Interview.all
   end

   def edit
       @interview = Interview.find(params[:id])
   end

   def update
       @interview = Interview.find(params[:id])
       @s= @interview.update_attributes(interview_params)
         if @s
           redirect_to interview_path(@interview)
       else
           redirect_to :back
       end  
   end 


   private
   def interview_params
     params.require(:interview).permit(:time,:employee_id,:student_id,:status)
   end
end