class Spent < ApplicationRecord
  enum status: { open: 0, submitted: 1, approved: 2, rejected: 3 }
	belongs_to :user
	validates_presence_of :value, :date, :description
end
