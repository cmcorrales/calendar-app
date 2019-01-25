class Event < ApplicationRecord
  validates :start_time, :end_time, :date, :name, presence: true
  validate :start_time_cannot_be_greater_than_end_time
  validates :start_time, uniqueness: { scope: :date,
  message: "Start time error: Event already exists at selected start time." }


  def start_time_cannot_be_greater_than_end_time
    if start_time > end_time
      errors.add(:start_time, "must be greater than or equal to end time")
    end
  end

end
