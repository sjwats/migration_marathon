class CreateCheckouts < ActiveRecord::Migration
  def up
    create_table :checkouts do |t|

      t.timestamps
    end
  end

  def down
    drop_table :checkouts
  end
end
