# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name_par)
        @name = name_par 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    
    end

    def happiness
        @happiness = 0 if @happiness < 0 
       @happiness = 10 if @happiness > 10
       @happiness
    end 

    def hygiene
        @hygiene = 0 if @hygiene < 0 
        @hygiene = 10 if @hygiene > 10
        @hygiene
    end 

    def clean? 
       @hygiene > 7
    end 
    
    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
    self.happiness += 2
    self.hygiene -= 3 
    return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend_name)
        self.happiness += 3
        friend_name.happiness += 3 
        @happiness 
        return "Hi #{friend_name.name}! It's #{@name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == 'politics'
            person.happiness -= 2
            self.happiness -= 2
            return 'blah blah partisan blah lobbyist' 
        elsif topic == 'weather'
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end 
        @happiness
    end 
end