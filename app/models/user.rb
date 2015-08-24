class User < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 4 , maximum: 30 }
  validates :email, presence: true, length: { maximum: 60 }
  validates :password, presence: true, length: { minimum: 8 }

  has_secure_password

  has_many :goals
end
