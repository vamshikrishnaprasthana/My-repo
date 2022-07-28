class Movie
  attr_accessor :name, :year   # it has both getters and setters

  def initialize(name, year)
    @name = name
    @year = year
  end
end
obj1 = Movie.new('Forrest Gump', 1994)
obj1.name = 'Fight Club'
obj1.year = 1999
p obj1.name
p obj1.year
