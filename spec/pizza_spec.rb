require './pizza'

describe Pizza do

  it "exists" do
    expect(Pizza).to be_a(Class)
  end

  describe '.initialize' do
  it "sets the name of the pizza" do
      pizza = Pizza.new('supreme')
      expect(pizza.name).to eq('supreme')
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
      topping = Topping.new 'sausage'
      expect(topping.vegetarian).to eq(false)
    end

  end

end
