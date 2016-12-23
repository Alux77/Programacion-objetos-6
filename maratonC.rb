require_relative "maratonM.rb"
require_relative "maratonV.rb"

class Maraton
  attr_accessor :question

  def initialize
    @model = Game.new
    @view = View.new
    @view.welcome
    theme = gets.chomp.to_i

    if theme == 1
      @cards = @model.csv_reader
    else
      @cards = @model.csv_reader_2
    end
    begin_game
  end

    def begin_game
      x = 0
      count_good = 0
      count_bad = 0

      while x < 10
        @cards
        answer = @view.method1(@cards[x])
        input = @view.get_answer
        correct_answer = @view.correct_answer(@cards[x])

        if input == correct_answer
          @view.correct_message
          count_good += 1
        else
          @view.incorrect_message
          count_bad += 1
        end
        x += 1
      end
      @view.counter(count_good, count_bad)
    
    end

end

imprimir = Maraton.new