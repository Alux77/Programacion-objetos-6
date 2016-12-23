require 'csv'

class Card
  attr_accessor :question, :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end
end

class Game

  def csv_reader
   @array_tasks = []
     csv = CSV.read("qst1.csv")
     csv.each do |row|
      @array_tasks << Card.new(row[0], row[1])
   end
  @array_tasks
  end

  def csv_reader_2
   @array_tasks = []
     csv = CSV.read("qst2.csv")
     csv.each do |row|
      @array_tasks << Card.new(row[0], row[1])
   end
  @array_tasks
  end

end