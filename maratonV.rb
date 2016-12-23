class View

  def welcome
    puts "                           ¡¡WELCOME!!"
    puts "**************** Let´s play Marathon for a while ****************"
    puts "Come on & choose a theme: (1)Entertainment or (2)General Knowledge"
    puts
  end

 def method1(question)
  puts question.question
end

def get_answer
  gets.chomp
end

def correct_answer(answer)
  answer.answer
end

def correct_message
  puts "¡¡CHEERS!! A correct one!"
end

def incorrect_message
  puts "¡¡DONKEY!! A wrong one!!"
end

def counter(count_good, count_bad)
  puts
  puts "¡¡THANK´S FOR PLAY!!"
  puts
  puts "Your record is: OK: #{count_good}points / Wrong: #{count_bad}points"
end

end