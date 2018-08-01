class Course < ApplicationRecord
  belongs_to :instructor

  validates :title, presence: true
  validates :slug, presence: true
end
