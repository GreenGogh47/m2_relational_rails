class AddLibrayToRareBook < ActiveRecord::Migration[5.2]
  def change
    add_reference :rare_books, :libraries, foreign_key:true
  end
end
