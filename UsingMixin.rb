#module 
module MathFunction
def find_squareroot
   @result=Math.sqrt(@input)
end

def find_square
 @result=@input**2
end

end
# end of module

# module
module InputOutput

def get_input
puts "Enter a number"
@input=gets.chomp.to_i
end

def display_result
puts "the result is #{@result}"
end

end
# end of module

class Calculator

 include MathFunction
 include InputOutput

attr_accessor :choice

def show_function
   puts "List of function"
   puts "1. Find Square of a number"
   puts "2. Find Squareroot of a number"
   puts "3. Exit"
   puts "Enter your choice"
   @choice=gets.chomp.to_i
   if(@choice==3)
      return false
   elsif(@choice >3 || @choice<1)
      puts "Invalid choice .choose 1,2 or 3"
      return false
   end
end

end
# end of class Calculator

#code outside the class
puts "Welcome to a Sample Calculator"
loop do
 calc=Calculator.new
   if(calc.show_function==false)
     break
   else
     calc.get_input
     if calc.choice==1
       calc.find_square
     elsif calc.choice==2
        calc.find_squareroot
     end
     calc.display_result
   end
end