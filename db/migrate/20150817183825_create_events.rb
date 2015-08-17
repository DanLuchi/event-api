class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :key
      t.string :text

      t.timestamps
    end
  end
end
