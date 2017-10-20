class LeadsController < ApplicationController
	# root path

	def index
		redirect_to root_path
	end
	
	def new

	end

	def create
		parser = LeadParser.new params[:lead][:body]
		customer = parser.parse
		flash[:notice] = 'Successfully Created Customer!'
		redirect_to customer
	rescue
		@error = true
		render :new
	end
end
