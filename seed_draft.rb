# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Motivation

m_one = Motivation.create!(content: "You don't get the ass you want by sitting on it!")
m_two = Motivation.create!(content: "It does not matter how slowly you go so long as you do not stop-- Confucius")
m_three = Motivation.create!(content: "The man who moves a mountain begins by carrying away small stones-- Confucius")
m_four = Motivation.create!(content: "When it is obvious that the goals cannot be reached, don't adjust the goals; adjust the action steps-- Confucius")
m_five = Motivation.create!(content: "Our greatest glory is not in never falling, but in rising every time we fall-- Confucius")
m_six = Motivation.create!(content: "You miss 100% of the shots you don't take-- Wayne Gretzky")
m_seven = Motivation.create!(content: "90% of hockey is mental and the other half is physical-- Wayne Gretzky")
m_eight = Motivation.create!(content: "Procrastination is one of the most common and deadliest diseases and its toll on success and happiness is heavy-- Wayne Gretzky")
m_nine = Motivation.create!(content: "It ain't over till it's over-- Yogi Berra")
m_ten = Motivation.create!(content: "If you're afraid to fail, then you're probably going to fail-- Kobe Bryant")

#Workout Log

w_one = Workout.create!(name: "Pushups", muscle_group: "Chest", sets: 5, reps: 15, date: "12/7/2017", weight: nil)
w_two = Workout.create!(name: "Sit-ups", muscle_group: "Abs", sets: 5, reps: 20, date: "12/7/2017", weight: nil)
w_three = Workout.create!(name: "Squats", muscle_group: "Legs", sets: 5, reps: 10, date: "12/7/2017", weight: nil)
w_four = Workout.create!(name: "Bicep Curl", muscle_group: "Arms", sets: 5, reps: 15, date: "12/7/2017", weight: 40)
w_five = Workout.create!(name: "Lat Pulldown", muscle_group: "Back", sets: 5, reps: 8, date: "12/7/2017", weight: 170)