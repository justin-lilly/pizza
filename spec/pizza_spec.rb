require './pizza'

describe Pizza do

  it "exists" do
    expect(Pizza).to be_a(Class)
  end


  describe '.initialize' do
    it "records all of the toppings" do
      toppings = [
          Topping.new('mushrooms', vegetarian: true),
          Topping.new('pepperoni')
          ]
      pizza = Pizza.new(toppings)
      expect(pizza.toppings).to eq(toppings)
    end

    it 'defaults the toppings to cheese only, if the pizza has no topping' do
      pizza = Pizza.new
      expect(pizza.toppings.size).to eq(1)
      expect(pizza.toppings.first.name).to eq('cheese')
    end 
  end

  describe '.vegetarain?' do
    it "determines if pizza is vegetarain(true) or not(false)"do
      toppings = [
          Topping.new('mushrooms', vegetarian: true),
          Topping.new('pepperoni')
          ]
      pizza = Pizza.new(toppings)
      expect(pizza.vegetarian?).to eq(false)
    end
  end

  describe '.add_topping' do
     it "adds topping to recipe" do
       pizza = Pizza.new
       pizza.add_topping('mushrooms')
       expect(pizza.toppings[1].name).to eq('mushrooms')
     end
   end

end

describe Topping do

  it "exists" do
    expect(Topping).to be_a(Class)
  end

  describe '.initialize' do
    it "sets the name of the topping" do
      topping = Topping.new('olives')
      expect(topping.name).to eq('olives')
    end

    it 'sets whether or not the topping is vegetarian' do
      topping = Topping.new 'bell peppers', vegetarian:true
      expect(topping.vegetarian).to eq(true)
    end

    it 'sets whether or not the topping is vegetarian' do
      topping = Topping.new 'pepperoni'
      expect(topping.vegetarian).to eq(false)
    end

  end

end
