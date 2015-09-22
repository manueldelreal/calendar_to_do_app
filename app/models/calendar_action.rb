class CalendarAction < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true, length: { minimum: 5}
	validates :start_date, presence: true
	validates :end_date, presence: true
end
