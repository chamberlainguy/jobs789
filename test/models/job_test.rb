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

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
