class WorkoutsController < ApplicationController
	def index
		@workouts = Workout.all.order(id: :desc)
		num = rand(1..10)
		@motivation = Motivation.find(num)
	end

	def show
		@workout = Workout.find(params[:id])
		num = rand(1..10)
		@motivation = Motivation.find(num)
	end

	def new
		@workout = Workout.new
		num = rand(1..10)
		@motivation = Motivation.find(num)
	end

	def create
		@workout = Workout.new(workout_params)
		num = rand(1..10)
		@motivation = Motivation.find(num)
		if @workout.save
			redirect_to workout_path(@workout)
		else
			render :new
		end
	end

	def edit
		@workout = Workout.find(params[:id])
		num = rand(1..10)
		@motivation = Motivation.find(num)
	end

	def update
		@workout = Workout.find(params[:id])
		if @workout.update(workout_params)
			redirect_to workout_path(@workout)
		else
			redirect_to workout_edit_path(@workout)
		end
		@motivations = Motivation.all
	end

	def destroy
		@workout = Workout.find(params[:id])
		@motivations = Motivation.all
		@workout.delete
		redirect_to workouts_path
	end

	private
	def workout_params
		params.require(:workout).permit(:name, :muscle_group, :sets, :reps, :date)
	end
end
