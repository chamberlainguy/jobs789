class ApplsController < ApplicationController

	def index
		@appls = Appl.all
	end

	def show
		@appl = Appl.find params[:id]
	end
	
	def new
		@appl = Appl.new
	end

	def create
		params[:appl][:job_id] = session[:job_id]
		params[:appl][:jobseeker_id] = session[:jobseeker_id]  
		@appl = Appl.new appl_params
		if @appl.save
			redirect_to root_path
		else
			render :new
		end	
	end

	def destroy
		a = Appl.find params[:id]
		a.destroy
		redirect_to appls_path
	end

	def edit
		@appl = Appl.find params[:id]
	end

	def update
		@appl = Appl.find params[:id]
		if @appl.update appl_params
			redirect_to root_path
		else
			render :edit
		end	
	end

	private

#  resume       :text
#  cover_letter :text

	def appl_params
		params.require(:appl).permit(:resume, :cover_letter, :job_id, :jobseeker_id)
	end

end
