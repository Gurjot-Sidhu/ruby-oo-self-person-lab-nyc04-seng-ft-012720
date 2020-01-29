# your code goes here
class Person
    attr_accessor :bank_account
    attr_writer :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def happiness
        if @happiness > 10
            return 10
        elsif
            @happiness < 0
            return 0
        else 
            return @happiness
        end
    end
   
    def hygiene
        if @hygiene > 10
            return 10
        elsif
            @hygiene < 0
            return 0
        else 
            return @hygiene
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        if @hygiene > 10
            @hygiene = 10
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
            if @hygiene < 0
                @hygiene = 0
            end
            if @happiness > 10
                @happiness = 10
            end
        return "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend =Person.new)
        friend.happiness += 3
            if friend.happiness > 10
                friend.happiness = 10
            end
        self.happiness +=3
            if self.happiness > 10
                self.happiness = 10
            end
        return "Hi #{(friend.name)}! It's #{@name}. How are you?"
    end

    def start_conversation(name,topic)
        if topic == "politics"
            name.happiness -=2
                if name.happiness < 0
                name.happiness = 0
                end
                self.happiness -=2
                if self.happiness < 0
                    self.happiness = 0
                end
            return "blah blah partisan blah lobbyist"
        end

        if topic == "weather"
            name.happiness += 1
                if name.happiness > 10
                name.happiness = 10
                end
            self.happiness += 1
                if self.happiness > 10
                    self.happiness = 10
                end
            return "blah blah sun blah rain"
        end
        return "blah blah blah blah blah"
    end
end