class Spent < ApplicationRecord
        enum status: { submitted: 0, approved: 1, rejected: 2 }
	belongs_to :user
	validates_presence_of :value, :date, :description
end
#rails g migration add_status_to_spents status:integer default = 0
#rake db:migrate
#check the schema
 
