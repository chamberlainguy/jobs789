class JobseekersessionController < ApplicationController
  def new
  end

  def create
    js = Jobseeker.find_by :email => params[:email]
    if js.present? && js.authenticate(params[:password])
      session[:jobseeker_id] = js.id
      # logout if logged in as an employer
      session[:employer_id] = nil
      redirect_to root_path
    else
      @login_msg = "Incorrect Email or Password"
      redirect_to jobseekerlogin_path
    end
  end

  def destroy
    session[:jobseeker_id] = nil
    redirect_to root_path
  end
end