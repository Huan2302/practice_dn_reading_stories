class Story < ApplicationRecord

  has_many :actions, dependent: :delete_all
  has_many :payment_histories, dependent: :delete_all
  has_many :chapters, dependent: :delete_all
  belongs_to :user
  belongs_to :category

  validates :story_name, presence: true, length: {maximum: Settings.story.name_maximum}
  validates :author, presence: true, length: {maximum: Settings.story.author_maximum}


  scope :relative_intro, -> {includes(:chapters).includes(:category)}

  def lastest_chapter
   chapters.lastest_chapter
  end
end
