class AddFavoritesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :favorites, :boolean, default:false
  end
end
