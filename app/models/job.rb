class Job < ApplicationRecord
  scope :with_year_and_month, ->(year, month) {
    where(created_at: Date.new(year,month,1)..Date.new(year,month,-1))
  }
end
