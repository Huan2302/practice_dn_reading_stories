class User < ApplicationRecord
 has_many :actions, dependent: :delete_all
  has_many :payment_histories, dependent: :delete_all
  has_many :stories, dependent: :delete_all
  before_save { email.downcase! }
  validates :username, presence: true, length: { maximum: Settings.NAME_MAXIMUM }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: Settings.EMAIL_MAXIMUM },
  format: { with: VALID_EMAIL_REGEX },uniqueness: true
  validates :password, presence: true, length: { minimum: Settings.PASSWORD_MINIMUM }, allow_nil: true
  has_secure_password
  has_many :payment_histories
  has_many :stories
  #belongs_to :category

 
end

