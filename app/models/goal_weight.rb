class GoalWeight < ActiveRecord::Base

	validates :weight, presence: true, numericality: true

	belongs_to :user

end
