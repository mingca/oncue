class LeadsController < ApplicationController
	# root path

	def index
		redirect_to root_path
	end
	
	def new

	end

	def create
		parser = LeadParser.new params[:lead][:body]
		redirect_to parser.parse
	rescue
		@error = true
		render :new
	end
end
