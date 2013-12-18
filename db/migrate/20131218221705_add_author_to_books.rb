class AddAuthorToBooks < ActiveRecord::Migration
  def up
    add_column :books, :author, :string, null:false
    change_column :books, :title, :string, null:false
  end

  def down
    remove_column :books, :author
    change_column :books, :title, :string, null:true
  end
end
