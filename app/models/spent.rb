class Spent < ApplicationRecord
	validates_presence_of :value, :date, :description
end
