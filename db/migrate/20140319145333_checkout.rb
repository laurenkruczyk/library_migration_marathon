class Checkout < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id, null: false
      # or t.belongs to :book
      t.integer :reader_id, null: false

      t.timestamps
  end
  add_index :checkouts, :book_id
 end
end