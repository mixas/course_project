class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :title
      t.integer :test_id
      t.float :complexity

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
