class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :milestones

#  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 70 }
  validates :description, length: { maximum: 500 }
  validates :finish_by, presence: true
end
