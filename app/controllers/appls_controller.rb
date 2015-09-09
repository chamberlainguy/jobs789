class ApplsController < ApplicationController

	def index
		if @current_employer.present?
			e = Employer.find @current_employer
			jobs = e.jobs
			j = Job.new
			@appls = j.appls
			jobs.each do |job|
				@appls << job.appls
			end
			@name = e.name
		elsif @current_jobseeker.present?
			js = Jobseeker.find @current_jobseeker
			@appls = js.appls
			@name = js.name
		else
			@appls = Appl.all
			@name = "All Employers"
		end		
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
		# Convert resume to a URL via cloudinary
		response = Cloudinary::Uploader.upload(params[:appl][:resume], :resource_type => :raw)
		params[:appl][:resume] = response["url"]
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
