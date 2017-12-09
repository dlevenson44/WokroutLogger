class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
    	t.string :name
    	t.string :muscle_group
    	t.integer :sets
    	t.integer :reps
    	t.integer :weight
    	t.string :date
      t.timestamps
    end
  end
end
