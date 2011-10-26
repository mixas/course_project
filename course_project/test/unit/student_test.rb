# == Schema Information
#
# Table name: students
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  surname    :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
