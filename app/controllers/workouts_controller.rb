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

	# create method
	def create
		# create a new workout with params from private method
		@workout = Workout.new(workout_params)
		# set variable to random number
		num = rand(1..10)
		# declare quote variable
		@motivation = Motivation.find(num)
		# if the workout is saved successfully
		if @workout.save
			# redirect to the show page of that workout
			redirect_to workout_path(@workout)
		# otherwise
		else
			# refresh the New page
			render :new
		end
	end

	# edit method
	def edit
		# pull in set workout
		@workout = Workout.find(params[:id])
		# pull random number
		num = rand(1..10)
		# set variable to random quote
		@motivation = Motivation.find(num)
	end

	# update method
	def update
		# set selected workout to variable
		@workout = Workout.find(params[:id])
		# if the workout is successfully updated
		if @workout.update(workout_params)
			# redirect to the updated workouts page
			redirect_to workout_path(@workout)
		# otherwise
		else
			# refresh the page
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
