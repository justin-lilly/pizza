class Pizza

  def initialize(toppings_arr=nil)
     @toppings = [];
     add_topping(toppings_arr)
  end


  def add_topping(toppings_arr)
    if toppings_arr.nil?
      @toppings << Topping.new()
    else
      toppings_arr.each do |i| 
        @toppings << Topping.new(i)
      end
     end
  end

  def toppings
    @toppings.map{ |i| i.name }
  end
      
end


class Topping

  attr_reader :name, :vegetarian

  def initialize (name = cheese, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
