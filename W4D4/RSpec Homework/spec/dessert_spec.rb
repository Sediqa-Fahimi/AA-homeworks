require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) { Dessert.new('cake', 10, chef) }
  let(:chef) { double("chef", name: "Ted") }

  describe "#initialize" do
    it "sets a type" do 
      expect(dessert.type).to eq('cake')
    end

    it "sets a quantity" do 
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new('ice cream', 2.0, chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      dessert.add_ingredient("Sugar")
      expect(dessert.ingredients).to include("Sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do 
      ingredients = ["sugar","flour","egg"]
      ingredients.each do |ingredient|
        dessert.add_ingredient(ingredient)
      end
      dessert.mix!
      expect(dessert.ingredients).not_to eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(dessert.eat(1)).to eq(9)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect{ dessert.eat(15) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to include("Ted")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      dessert.make_more
      expect(dessert.temp).to eq(400)
    end
  end
end
