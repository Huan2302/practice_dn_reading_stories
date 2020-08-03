class User < ApplicationRecord
  has_many :actions, dependent: :delete_all
  has_many :payment_histories, dependent: :delete_all
  has_many :stories, dependent: :delete_all
end
