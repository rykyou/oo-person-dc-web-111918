# your code goes here
require "pry"
 
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  attr_writer :bar

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happinessVal)
    @happiness = happinessVal
    @happiness = 10 if @happiness >= 10
    @happiness = 0 if @happiness <= 0
  end

  def hygiene=(hygieneVal)
    @hygiene = hygieneVal
    @hygiene = 10 if @hygiene >= 10
    @hygiene = 0 if @hygiene <= 0
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
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

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness = self.happiness - 2
      friend.happiness = friend.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = self.happiness + 1
      friend.happiness = friend.happiness + 1
      "blah blah sun blah rain"
    elsif topic == "programming"
      "blah blah blah blah blah"
    else
      "foo"
    end
  end

end

# binding.pry
# puts "foo"
