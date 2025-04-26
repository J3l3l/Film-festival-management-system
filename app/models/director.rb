class Director < ApplicationRecord
  validates :name, presence: true
  validates :nationality, presence: true
  validates :film_count, presence: true, numericality: { only_integer: true }
  validates :relationship_status, presence: true, inclusion: { in: ['First-time', 'Returning'] }
end
