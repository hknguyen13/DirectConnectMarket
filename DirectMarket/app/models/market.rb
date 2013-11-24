class Market < ActiveRecord::Base
  has_one :users
  has_many :orders
end
