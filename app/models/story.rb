class Story < ApplicationRecord
  has_many :actions, dependent: :delete_all
  has_many :payment_histories, dependent: :delete_all
  has_many :chapters, dependent: :delete_all
  belongs_to :user
  belongs_to :category
end
