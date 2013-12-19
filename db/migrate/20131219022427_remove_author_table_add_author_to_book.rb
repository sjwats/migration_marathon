class RemoveAuthorTableAddAuthorToBook < ActiveRecord::Migration
  def up
    drop_table :authors
    add_column :books, :author, :string
    remove_column :books, :author_id
  end

  def down
    create_table :authors
      t.string :first_name
      t.string :last_name

      t.timestamps

    remove_column :books, :author
    add_column :books, :author_id, :integer
  end
end
