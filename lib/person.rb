# your code goes here
class Person

    attr_reader :name

    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=level
        if level > 10
            @happiness = 10
        elsif level < 0
            @happiness = 0
        else
            @happiness = level
        end
    end

    def hygiene=level
        if level > 10
            @hygiene = 10
        elsif level < 0
            @hygiene = 0
        else
            @hygiene = level
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end
    end


    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = (self.hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = (self.hygiene - 3)
        self.happiness = (self.happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness = (friend.happiness+3)
        self.happiness = (self.happiness+3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(target, topic)
        case topic
        when 'politics'
            target.happiness = (target.happiness-2)
            self.happiness = (self.happiness-2)
            return 'blah blah partisan blah lobbyist'
        when "weather"
            target.happiness = (target.happiness+1)
            self.happiness = (self.happiness+1)
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end