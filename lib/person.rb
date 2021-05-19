# your code goes here
require 'pry'

class Person
	attr_accessor :bank_account, :happiness, :hygiene, :get_paid, :take_bath
	attr_reader :name

	def initialize(name)
		@name=name
		@bank_account=25
		@happiness=8
		@hygiene=8
	end

	def happiness=(num)
		@happiness=num
		@happiness = 10 if @happiness > 10
		@happiness = 0 if @happiness < 0
	end

	def hygiene=(num)
		@hygiene=num
		@hygiene = 10 if @hygiene > 10
		@hygiene= 0 if @hygiene < 0
	end

	def happy?
		@happiness > 7
	end
	
	def clean?
		@hygiene > 7
	end 

	def get_paid(salary)
		salary
		@bank_account += salary
		'all about the benjamins'
	end
	
	def take_bath
		self.hygiene += 4 
		"♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness +=2
		"♪ another one bites the dust ♫"
	end

	def call_friend(person)
		[person, self].each {|x| x.happiness +=3}
		"Hi #{person.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(person, topic)
		if topic == "politics" 
			[person, self].each {|x| x.happiness -=2}
		  "blah blah partisan blah lobbyist"
		elsif topic == "weather"
			[person, self].each {|x| x.happiness +=1}
			"blah blah sun blah rain"
		else
		'blah blah blah blah blah'
	end
end
end
