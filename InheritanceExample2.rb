#concept from http://rubylearning.com/satishtalim/ruby_inheritance.html

class Animal
	 def breathe
      puts "Inhale and Exhale"
    end

    def reproduce
      puts "reproduce offspring"
    end

    def communicate
      puts "does communicaiton"
    end

    def move
     puts "do movement"
    end
end

class Bird < Animal
  #method overriding
  def reproduce
    puts "lay eggs"
  end

#method overriding
  def move
  puts "use wings to fly"
  end
end

class Mammal < Animal
#method overriding
   def reproduce
   	 puts "give birth to baby"
   end

#method overriding
   def move
   puts "use legs to walk"
   end
end

class Dog < Mammal
    #method overriding
   def communicate
    puts "barks"
   end
end



an_animal=Animal.new
puts "Features of Animals are:"
puts an_animal.breathe
puts an_animal.reproduce
puts an_animal.communicate
puts an_animal.move

puts ".........................."

a_bird=Bird.new
puts "Features of Birds are:"
puts a_bird.breathe
puts a_bird.reproduce
puts a_bird.communicate
puts a_bird.move

puts ".........................."


a_mammal=Mammal.new
puts "Features of Mammals are:"
puts a_mammal.breathe
puts a_mammal.reproduce
puts a_mammal.communicate
puts a_mammal.move
puts ".........................."


a_dog=Dog.new
puts "Features of Dogs are:"
puts a_dog.breathe
puts a_dog.reproduce
puts a_dog.communicate
puts a_dog.move


 
