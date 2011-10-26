# == Schema Information
#
# Table name: adaptive_tests
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class AdaptiveTest < ActiveRecord::Base
  has_many :questions
end
