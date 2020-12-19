class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments

  validates :first_name, :last_name, presence: true, uniqueness: true
end
