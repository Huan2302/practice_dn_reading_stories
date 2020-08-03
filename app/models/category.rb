class Category < ApplicationRecord


  has_many :storys


  has_many :stories, dependent: :delete_all

end
