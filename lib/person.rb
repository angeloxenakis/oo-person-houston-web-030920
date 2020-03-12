# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def name()
        @name
    end

    def happiness()
        @happiness 
    end

    def happiness=(points)
        if points > 10
            @happiness = 10
        elsif points < 0
            @happiness = 0
        else 
            @happiness = points
        end 
    end 

    def hygiene()
        @hygiene
    end

    def hygiene=(points)
        if points > 10
            @hygiene = 10
        elsif points < 0
            @hygiene = 0
        else 
            @hygiene = points
        end 
    end

    def bank_account()
        @bank_account
    end

    def bank_account=(new_amount)
        @bank_account = new_amount
    end 


    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary_amount)
        @bank_account += salary_amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        elsif @happiness > 10
            @happiness = 10
        end
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation (a, b)
        if b == "politics"
        "blah blah partisan blah lobbyist"
        end
    end

    def start_conversation (start_person,topic)
        if topic == "politics"
          self.happiness -= 2
          start_person.happiness -= 2
          "blah blah partisan blah lobbyist"
        elsif topic == "weather"
          self.happiness += 1
          start_person.happiness += 1
          "blah blah sun blah rain"
        else
          "blah blah blah blah blah"
        end
    end

end

Ruth = Person.new("Ruth")
Angelo = Person.new("Angelo")



