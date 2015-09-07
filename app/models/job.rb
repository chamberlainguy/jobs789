# == Schema Information
#
# Table name: jobs
#
#  id           :integer          not null, primary key
#  title        :text
#  location     :text
#  salary       :float
#  industry     :text
#  description  :text
#  closing_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Job < ActiveRecord::Base
	belongs_to :employer
	has_many :appls
	validates :title, :presence => true
	validates :location, :presence => true
	validates :industry, :presence => true
	validates :description, :presence => true
	validates :closing_date, :presence => true
end
