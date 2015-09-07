# == Schema Information
#
# Table name: jobseekers
#
#  id         :integer          not null, primary key
#  email      :text
#  name       :text
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Jobseeker < ActiveRecord::Base
	has_secure_password
	has_many :appls
	validates :email, :presence => true
	validates :name, :presence => true, :length => { :minimum => 3 }
end

