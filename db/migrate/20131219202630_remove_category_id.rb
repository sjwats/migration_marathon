class RemoveCategoryId < ActiveRecord::Migration
  def up
    remove_column :categorizations, :category_id
    add_column :categorizations, :genre_id, :integer, null:false
  end

  def down
    add_column :categorizations, :category_id, :integer, null:false
    remove_column :categorizations, :genre_id
  end
end
