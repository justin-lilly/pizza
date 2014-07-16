class Pizza
  attr_reader :toppings

  def initialize(toppings_arr=nil)
     @toppings = []
     add_topping(toppings_arr);
  end


  def add_topping(toppings_arr)
    if toppings_arr.nil?
      @toppings.push(Topping.new('cheese'))
    else
      toppings_arr.each do |i| 
        @toppings.push(i)
        end
     end
  end

      
end


class Topping

  attr_reader :name, :vegetarian

  def initialize (name , vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
