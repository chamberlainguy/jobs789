class EmployersController < ApplicationController

	def index
		@employers = Employer.all
	end

	def show
		@employer = Employer.find params[:id]
		gon.lat = @employer.latitude
		gon.long = @employer.longitude
	end
	
	def new
		@employer = Employer.new
	end

	def create
		@employer = Employer.new employer_params
		if @employer.save
			# Login this newly created employer
			session[:employer_id] = @employer.id
			# Logout of logged in as a jobseeker
			session[:jobseeker_id] = nil
			redirect_to root_path
		else
			render :new
		end
	end

	def destroy
		e = Employer.find params[:id]
		e.destroy
		redirect_to root_path
	end

	def edit
		@employer = @current_employer
	end

	def update
		@employer = @current_employer
		if @employer.update employer_params
			redirect_to employer_path
		else
			render :edit		
		end
	end

	private

#  email      :text
#  name       :text
#  address    :text

	def employer_params
		params.require(:employer).permit(:email, :name, :address, :password, :password_confirmation)
	end

end
