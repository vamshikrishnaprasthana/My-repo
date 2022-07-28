#Abstraction program In Ruby

class College
    public
    def teacher
        puts "hello i am Teacher"
        student
    end
    private
    def student
        puts "hello i am student"
    end
end

c = College.new
c.teacher
