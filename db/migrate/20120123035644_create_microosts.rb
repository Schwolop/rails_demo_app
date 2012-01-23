class CreateMicroosts < ActiveRecord::Migration
  def self.up
    create_table :microosts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :microosts
  end
end
