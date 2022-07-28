class Person
end
Person.instance_eval do
def start
puts"hi"
end
end
Person.start
