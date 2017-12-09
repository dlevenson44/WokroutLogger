# Motivation Table

m_one = Motivation.create!(quote: "If you ain't first, you're last.", author: "Ricky Bobby")
m_two = Motivation.create!(quote: "It does not matter how slowly you go so long as you do not stop.", author: "Confucius")
m_three = Motivation.create!(quote: "The man who moves a mountain begins by carrying away small stones.", author: "Confucius")
m_four = Motivation.create!(quote: "When it is obvious that the goals cannot be reached, don't adjust the goals; adjust the action steps.", author: "Confucius")
m_five = Motivation.create!(quote: "Our greatest glory is not in never falling, but in rising every time we fall.", author: "Confucius")
m_six = Motivation.create!(quote: "You miss 100% of the shots you don't take.", author: "Wayne Gretzky")
m_seven = Motivation.create!(quote: "90% of hockey is mental and the other half is physical.", author: "Wayne Gretzky")
m_eight = Motivation.create!(quote: "Procrastination is one of the most common and deadliest diseases and its toll on success and happiness is heavy.", author: "Wayne Gretzky")
m_nine = Motivation.create!(quote: "It ain't over till it's over.", author: "Yogi Berra")
m_ten = Motivation.create!(quote: "If you're afraid to fail, then you're probably going to fail.", author: "Koby Bryant")

#Workout Log Table

w_one = Workout.create!(name: "Pushups", muscle_group: "Chest", sets: 5, reps: 15, date: "12/7/2017", weight: nil)
w_two = Workout.create!(name: "Sit-ups", muscle_group: "Abs", sets: 5, reps: 20, date: "12/7/2017", weight: nil)
w_three = Workout.create!(name: "Squats", muscle_group: "Legs", sets: 5, reps: 10, date: "12/7/2017", weight: nil)
w_four = Workout.create!(name: "Bicep Curl", muscle_group: "Arms", sets: 5, reps: 15, date: "12/7/2017", weight: 40)
w_five = Workout.create!(name: "Lat Pulldown", muscle_group: "Back", sets: 5, reps: 8, date: "12/7/2017", weight: 170)