class Event < ApplicationRecord
  validates :start_time, :end_time, :date, presence: true
  validate :start_time_cannot_be_greater_than_end_time, :event_start_time_cannot_repeat

  def start_time_cannot_be_greater_than_end_time
    if start_time > end_time
      errors.add(:start_time, "must be greater than or equal to end time")
    end
  end


  # def event_start_time_cannot_repeat
  #   events_with_same_date = Event.all.select do |event|
  #     event.date == date
  #   end
  #   events_with_same_date.each do |event|
  #     if event.start_time == start_time
  #         errors.add(:start_time, "must be unique for a given day")
  #     end
  #   end
  # end

end
