require "pry"

class Person 

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end 
 

    def name
        @name  
    end 

    def bank_account
        @bank_account 
    end 

    def bank_account=(bal)
        @bank_account = bal
    end

    def happiness
        @happiness
    end 

    def happiness=(happy_level)
        @happiness = happy_level
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end 

    def hygiene
        @hygiene 
    end 

    def hygiene=(clean_level)
        @hygiene = clean_level 
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end 
    end 

    def happy?
        self.happiness > 7
    end 

    def clean?
        self.hygiene > 7
    end 

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            person.happiness = person.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            person.happiness = person.happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end 
    
    end 
end  