#concept from https://newcircle.com/bookshelf/ruby_tutorial/class_inheritance

class Rectangle
	attr_reader :width,:height
	def initialize(width,height)
    @width=width
    @height=height
    
    end

    def area
    	@width*@height
    end
end

class Square < Rectangle
   def initialize(width)
   	super(width,width)
   end
end

rectangle_object=Rectangle.new(100,200)
puts "The area of Rectange of width\:#{rectangle_object.width} and height:#{rectangle_object.height} is #{rectangle_object.area}"
square_object=Square.new(50)
puts "The area of Square of width\:#{square_object.width} is #{square_object.area}"

