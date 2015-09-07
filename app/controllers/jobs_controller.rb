class JobsController < ApplicationController
  def index
		@jobs = Job.all
	end

	def show
		@job = Job.find params[:id]
	end
	
	def new
		@job = Job.new
	end

	def create
		params[:job][:employer_id] = @current_employer.id
		@job = Job.new job_params
		if @job.save
			redirect_to root_path
		else
			render :new
		end
	end

	def destroy
		j = Job.find params[:id]
		j.destroy
		redirect_to jobs_path
	end

	def edit
		@job = Job.find params[:id]
	end

	def update
		# j = Job.find params[:id]
		# j.update job_params
		# redirect_to job
		@job = Job.find params[:id]
		if @job.update job_params
			redirect_to root_path
		else
			render :edit
		end
	end

	private

#  title        :text
#  location     :text
#  salary       :float
#  industry     :text
#  description  :text
#  closing_date :date

	def job_params
		params.require(:job).permit(:title, :location, :salary, :industry, :description, :closing_date, :employer_id )
	end
end
