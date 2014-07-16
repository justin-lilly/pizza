class Pizza

  attr_reader :name

  def initialize(name)
    @name = name
  end


end


class Topping

  attr_reader :name, :vegetarian

  def initialize (name, vegetarian: false)
    @name = name
    @vegetarian = vegetarian
  end

end
