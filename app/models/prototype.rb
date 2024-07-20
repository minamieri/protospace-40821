class Prototype < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_one_attached :image

  validates :name, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validates :image, presence: true
  validates :text, presence: true, unless: :was_attached?


  def was_attached?
    self.image.attached?
  end

end
