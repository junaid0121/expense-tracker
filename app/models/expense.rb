class Expense < ApplicationRecord

  validates :bought_at, :price, presence: true


  belongs_to :category
  belongs_to :product

  scope :from_this_month, -> { where(bought_at: DateTime.current.all_month) }
  scope :from_this_week, -> { where(bought_at: DateTime.current.all_week) }
  scope :by_today, -> { where(bought_at: DateTime.current.all_day) }

end
