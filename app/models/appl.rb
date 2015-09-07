# == Schema Information
#
# Table name: appls
#
#  id           :integer          not null, primary key
#  resume       :text
#  cover_letter :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Appl < ActiveRecord::Base
	belongs_to :job
	belongs_to :jobseeker
	validates :resume, :presence => true
	validates :cover_letter, :presence => true
end
