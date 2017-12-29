class Workout < ApplicationRecord
	validates :name, :muscle_group, :sets, :reps, :date, :presence => true
end
