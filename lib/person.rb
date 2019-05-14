

class Person
    @@all=[]
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness_points=8
        @hygiene_points=8
        @@all << self
    end
    def name
        @name
    end
    def bank_account
        @bank_account
    end
    def bank_account=(money)
        @bank_account=money
    end
    def clean?
        if @hygiene_points>7
            true
        else
            false
        end
    end
    def happy?
        if @happiness_points>7
            true
        else
            false
        end
    end
    def happiness
       @happiness_points
    end
    def happiness=(anything)
        if anything>10
            anything=10
        end
        if anything<0
            anything=0
        end
        if anything<11 and anything>-1
            @happiness_points=anything
        end
    end
    def hygiene
        @hygiene_points
    end
    def hygiene=(anything)
        if anything>10
            anything=10
        end
        if anything<0
            anything=0
        end
        if anything<11 and anything>-1
            @hygiene_points=anything
        end
    end
    def get_paid(salary)
        @bank_account=@bank_account+salary
        return "all about the benjamins"
    end
    def check_hygiene
        if @hygiene_points>10
            @hygiene_points=10
        elsif @hygiene_points<0
            @hygiene_points=0
        else
        end
        @hygiene_points
    end
    def take_bath
        @hygiene_points=@hygiene_points+4
       self.hygiene=@hygiene_points
       "♪ Rub-a-dub just relaxing in the tub ♫"
#binding.pry
    end
    def work_out
        @happiness_points=@happiness_points+2
        self.happiness=@happiness_points
        @hygiene_points=@hygiene_points-3
        self.hygiene=@hygiene_points
        return  "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness=self.happiness+3
        friend.happiness=friend.happiness+3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(speaker,topic)
        if topic=="politics"
            self.happiness=self.happiness-2
            speaker.happiness=speaker.happiness-2
            "blah blah partisan blah lobbyist"
        elsif topic=="weather"
            self.happiness=self.happiness+1
            speaker.happiness=speaker.happiness+1
            "blah blah sun blah rain"
        else
            self.happiness
            "blah blah blah blah blah"
        end
    end
end
