class Person
    attr_reader :name
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_points = 8
    @hygiene_points = 8
  end

  def get_name
   @name 
  end

def happiness
    @happiness_points
end

  def happiness=(new_hap)
    if new_hap <= 0 
        @happiness_points = 0
    elsif new_hap >= 10
        @happiness_points = 10
    else 
        @happiness_points = new_hap
    end

  @happiness_points

  end
def hygiene
    @hygiene_points
end
  def hygiene=(new_hy)
    if new_hy <= 0 
        @hygiene_points = 0
    elsif new_hy >= 10
        @hygiene_points = 10
    else 
        @hygiene_points = new_hy
    end
    @hygiene_points
  end

    def bank_account=(bal)
        @bank_account = bal
    end

    def bank_account
        @bank_account
    end
    
    def happy?
        if @happiness_points > 7
           return true
        end
        false    
    end

    def clean?
        if @hygiene_points > 7
            return true
        end
        false
    end
  def get_paid(sal)
    @bank_account += sal
    return "all about the benjamins"
end

def take_bath
    @hygiene_points += 4
    self.hygiene = @hygiene_points
    return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    @happiness_points += 2
    self.happiness = @happiness_points
    @hygiene_points -= 3
    self.hygiene = @hygiene_points
    return "♪ another one bites the dust ♫"

end

    def call_friend(other_friend)
        other_friend.happiness=other_friend.happiness+3
        self.happiness=self.happiness+3
        return "Hi #{other_friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness=person.happiness-2
            self.happiness=self.happiness-2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness=person.happiness+1
            self.happiness=self.happiness+1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end 
    end    
end




