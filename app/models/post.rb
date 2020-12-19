class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, :content, :date, presence: true,
  validates :title, length: { minimum: 10, too_short: "minimum of %{count} characters required" }
  validates :content, length: { minimum: 30, too_short: "minimum of %{count} characters required" }
end
