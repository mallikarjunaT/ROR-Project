class AdminsController < ApplicationController
	before_action :authenticate_admin!
	
	def index
		@admin=Admin.all
		@interview=Interview.all
	end
	def new
		@interview=Interview.all
	end
	def create
	end
	def edit
	end
	

end
	