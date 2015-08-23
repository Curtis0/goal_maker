class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :milestone

  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 70 }
  validates :goal, length: { maximum: 500 }
  validates :finish_by, presence: true
end
