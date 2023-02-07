class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.string :name
      t.integer :study_rooms
      t.boolean :free_parking

      t.timestamps
    end
  end
end
