class EmployersessionController < ApplicationController
  def new
  end

  def create
    employer = Employer.find_by :email => params[:email]
    if employer.present? && employer.authenticate(params[:password])
      session[:employer_id] = employer.id
      # logout of logged in as a jobseeker
      session[:jobseeker_id] = nil
      redirect_to root_path
    else
      @login_msg = "Incorrect Email or Password"
      redirect_to employerlogin_path
    end
  end

  def destroy
    session[:employer_id] = nil
    redirect_to root_path
  end
end