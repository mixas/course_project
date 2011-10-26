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

class Student < ActiveRecord::Base  
end
