class Post < ApplicationRecord
  validates :description, presence: true

  belongs_to :created_by, class_name: "User"
end
