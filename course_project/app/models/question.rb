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

class Question < ActiveRecord::Base
  belongs_to :adaptive_tests
end
