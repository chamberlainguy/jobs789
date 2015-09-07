# == Schema Information
#
# Table name: employers
#
#  id         :integer          not null, primary key
#  email      :text
#  name       :text
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Employer < ActiveRecord::Base
	has_secure_password
	has_many :jobs
	validates :email, :presence => true
	validates :name, :presence => true, :length => { :minimum => 3 }
end
