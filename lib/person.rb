class Person

    @@all=[]
    def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
    @@all << self
    end

#Getter

    def name                #getter Method
        @name
    end

    def bank_account
        @bank_account        #getter Method
    end

    def happiness
        @happiness          #getter Method
    end
    
    def hygiene                 #getter Method
        @hygiene
    end     

    def bank_account(amount)
        @bank_account = amount            #Setter Method
    end

    def happiness=(happy_amout)              #Setter Method
        @happiness = happy_amout
    end

    def hygiene(hygiene_amout)                #Setter Method
        @hygiene = hygiene_amout
    end



    def happy?
        if 
            @happiness > 7
            true
        else 
            false
        end 
    end           
    
    
    def clean?
        if 
            @hygiene > 7
            true
        else 
            false
        end
    end
    
    
    def happiness
        if 
            @happiness > 10
            @happiness = 10
        else if
             @happiness < 0
            @happiness = 0
        else 
            @happiness    
        end
    end

    def hygiene
        if
             @hygiene > 10
             @hygiene = 10
        else if 
             @hygiene > 10
             @hygiene = 10
        else
             @hygiene
        end
    end
    
    def get_paid(payment)
        @bank_account += payment
        return 
        "all about benjamins"
    end


    
    
    def take_bath
        @hygiene += 4
        hygiene
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    
    def work_out
        @hygiene -= 3
        @happiness += 2

        hygiene
        happiness
    end


    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3

        happiness
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            happiness
            return "blah blah partisan blah lobbyist"
        elsif 
            topic == "weater"
            self.happiness += 1
            friend.happiness += 1
            happiness
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"  
        end
        
    end
end

  #  def self.happiness
  #      @@all.each do | person |
  #          if person.happiness > 10
  #              person.happiness = 10
  #          elsif person.happiness < 0
  #              person.happiness = 0
  #          else
  #              person.happiness
  #          end
  #     end
  #  end                      
              

  # def self.hygiene
  #     @@all.each do | person |
  #       if person.hygiene > 10  
  #
  #
  #
  #
  #
  #
  #
  #
  #




def self.bank_account
stef = person.new("stefan")  














