class Categorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|

    t.integer :book_id, null: false
    t.integer :category_id, null: false

    end
  end
end
