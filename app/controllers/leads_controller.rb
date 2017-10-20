class LeadsController < ApplicationController
	# root path
	def new

	end

	def create
		parser = LeadParser.new params[:lead][:body]
		redirect_to parser.parse
	# rescue
	# 	redirect_to root_path
	end
end
