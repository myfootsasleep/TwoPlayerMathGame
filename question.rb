class Question
  attr_accessor :num1, :num2, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question
    print "What is #{@num1} + #{@num2}? "
    user_answer = gets.chomp.to_i
    @answer = @num1 + @num2

    if user_answer == @answer
      puts "Correct!"
      return true
    else
      puts "Incorrect. The correct answer was #{@answer}"
      return false
    end
  end
end
