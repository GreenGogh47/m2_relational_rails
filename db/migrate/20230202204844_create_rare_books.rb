class CreateRareBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :rare_books do |t|
      t.references :library_id
      t.string :title
      t.integer :cost
      t.boolean :on_display

      t.timestamps
    end
  end
end
