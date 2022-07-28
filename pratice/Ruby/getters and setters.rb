class Movie
  def initialize(name)
    @name = name
  end

  def hen #getter method
    @name
  end

  def hen=(name) #setter method
    @name = name
  end
end

obj1 = Movie.new('VAMSHI')
p obj1.hen
obj1.hen = 'KRISHNA'
p obj1.hen
