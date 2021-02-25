# your code goes here
require "pry"

class Person

    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account

    @@people = []

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        #binding.pry
        @@people << self

    end

    def happy_check
        #binding.pry
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10 
    end

    def self.snow_day
        @@people.happiness = 10
    end


    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def happiness=(happy_value)  # Lab requires the users 
        #binding.pry
        @happiness = happy_value
        happy_check
        return @happiness
    end

    def hygiene_check
        #binding.pry
        @hygiene = 0 if @hygiene < 0
        @hygiene = 10 if @hygiene > 10 
    end

    def hygiene=(hygiene_value)
        #binding.pry
        @hygiene = hygiene_value
        hygiene_check
        return @hygiene
    end

    def clean?  #Andre did return @hygiene > 7
        if @hygiene > 7
            return true
        else
            return false
        end
    end


    def take_bath
        self.hygiene += 4
        hygiene_check
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        #binding.pry
        self.happiness += 2
        happy_check
        self.hygiene -= 3
        hygiene_check
        return "♪ another one bites the dust ♫"
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def call_friend(called_person)
        self.happiness += 3
        called_person.happiness += 3
        #binding.pry
        #if called_person.name == "Felix"
        return "Hi #{called_person.name}! It's #{self.name}. How are you?"
        
    end

    def start_conversation(other_person, topic)
        if topic == "politics"
            self.happiness -= 2
            other_person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            other_person.happiness += 1
            return  "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end



end
