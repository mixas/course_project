class CreateAdaptiveTests < ActiveRecord::Migration
  def self.up
    create_table :adaptive_tests do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :adaptive_tests
  end
end
