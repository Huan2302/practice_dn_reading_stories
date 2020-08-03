class Story < ApplicationRecord
  ORDERS = %i(story_name view).freeze

  has_many :actions
  has_many :payment_historys
  has_many :chapters
  belongs_to :category
  belongs_to :user

  validates :story_name, presence: true, length: {maximum: Settings.story.name_maximum}
  validates :author, presence: true, length: {maximum: Settings.story.author_maximum}


  scope :relative_intro, -> {includes(:chapters).includes(:category)}

  def lastest_chapter
   chapters.lastest_chapter
  end
end
