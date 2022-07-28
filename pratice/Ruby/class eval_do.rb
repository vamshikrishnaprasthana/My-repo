class Person

end
Person.class_eval do
def start
puts "hi"
end

end
p=Person.new
p.start
