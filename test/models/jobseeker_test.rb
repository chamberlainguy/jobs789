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

require 'test_helper'

class JobseekerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
