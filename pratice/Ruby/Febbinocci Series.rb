class Febinocci
    def no
        first = 0
        second = 1
        nextterm = 0

        puts "Enter the number"
        num = gets.chomp.to_i
        puts " #{num}terms of febinocci series"
        puts 0
        c = 1
        while(c<=num+1)
            if(c<=1)
                nextterm = c

            else
            puts nextterm
            nextterm = first+second
            first =second
            second = nextterm
            end
        c+=1
         end
    end
end

feb = Febinocci.new
feb.no
