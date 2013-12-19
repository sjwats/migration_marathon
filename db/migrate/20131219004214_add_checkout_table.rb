class AddCheckoutTable < ActiveRecord::Migration
  def up
    add_column :checkouts, :book_id, :integer, null:false
    add_column :checkouts, :patron, :string, null:false
  end

  def down
    remove_column :checkouts, :book_id
    remove_column :checkouts, :patron
  end
end
