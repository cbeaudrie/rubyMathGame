class Player

  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrement
    puts "You've lost a life!"
    @lives -= 1
  end

end


