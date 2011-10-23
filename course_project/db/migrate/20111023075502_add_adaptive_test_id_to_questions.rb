class AddAdaptiveTestIdToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :adaptive_test_id, :integer
  end

  def self.down
    remove_column :questions, :adaptive_test_id
  end
end
