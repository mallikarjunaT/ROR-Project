class NewemployeesController < ApplicationController
	before_action :authenticate_newemployee!
	def new
		@interview=Interview.all
	end
	  def index
        @interview = current_employee.inter
    end
end
