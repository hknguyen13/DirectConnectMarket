class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :market
  belongs_to :item
end
