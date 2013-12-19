class CreateCategorizations < ActiveRecord::Migration
  def up
    create_table :categorizations do |t|
      t.integer :book_id, null:false
      t.integer :category_id, null:false
      t.timestamps
    end
  end

  def down
    drop_table :categorizations
  end
end
