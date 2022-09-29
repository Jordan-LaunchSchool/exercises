=begin
  - write a method that takes 3 integers (test scores)
  - have the method determine the mean average of the test scores and return the letter value
  associated with that grade

  SCRATCH PAD: 
  case the letter/grade
  
  - define a method that takes 3 integers
  - save the mean average of the integers to a variable
  - case the mean average with the appropraite letters
=end

def get_grade(score_1, score_2, score_3)
  average_score = (score_1 + score_2 + score_3) / 3
  case average_score
  when 90..100
    'A'
  when 80..90
    'B'
  when 70..80
    'C'
  when 60..70
    'D'
  when 0..60
    'F'
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"