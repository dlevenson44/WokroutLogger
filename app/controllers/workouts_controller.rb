class WorkoutsController < ApplicationController
	# index method
	def index
		# list all workouts with ID in descending order
		@workouts = Workout.all.order(id: :desc)
		# initiate randomizer for quotes
		num = rand(1..10)
		# set variable to random quote from database
		@motivation = Motivation.find(num)
	end

	# show method
	def show
		# find specified workout
		@workout = Workout.find(params[:id])
		# list all workouts with ID in desc order
		@workouts = Workout.all.order(id: :desc)
		# initiate randomizer for quotes
		num = rand(1..10)
		# set variable to random quote from db
		@motivation = Motivation.find(num)
	end

	# new method
	def new
		# create new workout
		@workout = Workout.new
		# initiate randomizer for quote
		num = rand(1..10)
		# set variable to random quote
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
	end

	# destroy method
	def destroy
		# find specified workout
		@workout = Workout.find(params[:id])
		# list all motivation quotes
		@motivations = Motivation.all
		# delete workout
		@workout.delete
		# redirect to index page after deletion
		redirect_to workouts_path
	end

	private
	# set workout params in private method
	def workout_params
		# require columns in table
		params.require(:workout).permit(:name, :muscle_group, :sets, :reps, :date)
	end
end
