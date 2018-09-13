class Order < ApplicationRecord
  belongs_to :formule
  belongs_to :user
  has_many :pasta_orders
  has_many :pasta_types, through: :pasta_orders
end
