class ChangeForeignKeyForRareBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :rare_books, :libraries_id, :library_id
  end
end
