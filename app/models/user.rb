class User < ApplicationRecord
  has_many :actions
  has_many :payment_historys
  has_many :storys
end
