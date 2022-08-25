# random_sentence.rb

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(n, a)
  "#{n} went #{a} today!"
end

puts sentence(name(names), activity(activities))