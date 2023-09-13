class Budget < ApplicationRecord

  MONTHS = 1..12 

  validates :month, presence: true 

  belongs_to :category
  has_many :depositors

  scope :by_home_for_this_month, -> { find_by(month: Time.now.month, category_id: 1) }



end
