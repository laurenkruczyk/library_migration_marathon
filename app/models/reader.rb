class Reader < ActiveRecord::Base
  has_many :books
  has_many :checkouts
end
