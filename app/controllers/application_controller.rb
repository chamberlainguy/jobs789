class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_current_employer
  before_action :fetch_current_jobseeker

  private

  def fetch_current_employer
    # Check if there's an employer logged in whose data we need to load for them.
    if session[:employer_id].present?
      # .find_by is safer than .find for non-existent IDs because it won't throw an error.
      @current_employer = Employer.find_by :id => session[:employer_id]
      # Stop trying to log this user_id in if we can't find them in the database.
      session[:employer_id] = nil unless @current_employer.present?
    end
  end

  def fetch_current_jobseeker
    # Check if there's a jobseeker logged in whose data we need to load for them.
    if session[:jobseeker_id].present?
      # .find_by is safer than .find for non-existent IDs because it won't throw an error.
      @current_jobseeker = Jobseeker.find_by :id => session[:jobseeker_id]
      # Stop trying to log this user_id in if we can't find them in the database.
      session[:jobseeker_id] = nil unless @current_jobseeker.present?
    end
  end
end
