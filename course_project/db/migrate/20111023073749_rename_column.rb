class RenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :questions, :test_id, :adaptive_test_id
  end

  def self.down
  end
end
