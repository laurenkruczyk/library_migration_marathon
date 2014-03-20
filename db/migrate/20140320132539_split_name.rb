class SplitName < ActiveRecord::Migration
  def up
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string
    # add_column :readers, :full_name, :string

    Reader.find_each do |reader|
      reader_names = reader.full_name.split

      # reader["first_name"]
      # reader[:first_name]
      reader.first_name = reader_names[0] 
      reader.last_name = reader_names[1]
      reader.save
    end

    remove_column :readers, :full_name
  end
      

  def down

    add_column :readers, :full_name, :string

    Reader.find_each do |reader|
      reader_name = reader.first_name + " " + reader.last_name
      reader.full_name = reader_name
      reader.save
    end

    remove_column :readers, :first_name
    remove_column :readers, :last_name
  end

end
