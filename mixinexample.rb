module MathFunctionList1
private
	def calculate_square(x)
		@result=x**2
	end

end

module MathFunctionList2
private
def calculate_squareroot(x)
	@result= Math.sqrt(x)
end
end

class InputOutput

private
def get_input

	puts "enter a number"
	@input=gets.chomp.to_i
	 
end

def display_result
	 
	puts "= #{@result}"
 
end

end


class Calculator
include MathFunctionList1
include MathFunctionList2

def show_menu

	puts "....Choose a math function......"
	puts "1.Find square"
	puts "2.Find Squareroot"
	puts "3.Exit"
	puts "Enter your choice"
	@choice=gets.chomp.to_i
end

 


def calculate

	 if(@choice==1)		 
		 calculate_square(@input)
		 
	if(@choice==2)		 
		 calculate_squareroot(@input)
	end
end


# end of class Calculator

# runnning calculator in a loop


	 
