class RemoveTestIdToQuestions < ActiveRecord::Migration
  def self.up
    remove_column :questions, :test_id
  end

  def self.down
    add_column :questions, :test_id, :integer
  end
end
