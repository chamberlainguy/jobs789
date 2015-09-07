class JobseekersController < ApplicationController
  def index
		@jobseeker = Jobseeker.all
	end

	def show
		@jobseeker = Jobseeker.find params[:id]
	end
	
	def new
		@jobseeker = Jobseeker.new
	end

	def create
		@jobseeker = Jobseeker.new jobseeker_params
		if @jobseeker.save
			# Login this newly created jobseeker
			session[:jobseeker_id] = @jobseeker.id
			# Logout if logged in a an employer
			session[:employer_id] = nil
			redirect_to root_path
		else
			render :new
		end	
	end

	def destroy
		js = Jobseeker.find params[:id]
		js.destroy
		redirect_to jobseeker_path
	end

	def edit
		@jobseeker = @current_jobseeker
	end

	def update
		@jobseeker = @current_jobseeker
		if @jobseeker.update jobseeker_params
			redirect_to root_path
		else
			render :edit
		end	
	end

	private

#  email      :text
#  name       :text
#  address    :text

	def jobseeker_params
		params.require(:jobseeker).permit(:email, :name, :address, :password, :password_confirmation)
	end

end
