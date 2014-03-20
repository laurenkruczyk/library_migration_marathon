class AddRatingToBooks < ActiveRecord::Migration
  def up
    add_column :books, :rating, :integer
    execute "ALTER TABLE books ADD CONSTRAINT numericality CHECK (rating BETWEEN 0 AND 100)"
  end

  def down 
    execute "ALTER TABLE books REMOVE CONSTRAINT numericality"
    remove_column :books, :rating
  end
end 