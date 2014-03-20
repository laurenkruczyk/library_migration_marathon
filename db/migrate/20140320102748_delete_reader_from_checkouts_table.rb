class DeleteReaderFromCheckoutsTable < ActiveRecord::Migration
   def up
    execute "DELETE from checkouts WHERE reader_id = 1"
  end

  def down
    execute "INSERT from checkouts WHERE reader_id = 1"
 end
end

