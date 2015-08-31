class AddUniqueIndexToEvent < ActiveRecord::Migration
  def change
    add_index :events, :key, unique: true
  end
end
