# == Schema Information
#
# Table name: questions
#
#  id               :integer         not null, primary key
#  title            :string(255)
#  complexity       :float
#  created_at       :datetime
#  updated_at       :datetime
#  adaptive_test_id :integer
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
