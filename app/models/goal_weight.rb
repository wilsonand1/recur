class GoalWeight < ActiveRecord::Base

	validates :weight, presence: true

	belongs_to :user

end
