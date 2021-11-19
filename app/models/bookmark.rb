class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true
  validates_length_of :comment, minimum: 6
  validates :movie, presence: true, uniqueness: { scope: :list }
end
