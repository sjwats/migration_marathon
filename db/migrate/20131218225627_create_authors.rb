class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name, null:false
      t.string :last_name, null:false

      t.timestamps
    end
    remove_column :books, :author, :string
    add_column :books, :author_id, :integer
  end
end
