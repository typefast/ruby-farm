#sow seeds
#pass one year
#harvest crops
#sell crops
#gold increases
#buy more seeds - price fluctuates rand
class Farmer

  attr_accessor :seeds, :seedlings, :crops, :harvested_crops, :gold
  
  def initialize
    @seeds = 5
    @seedlings = 0
    @crops = 0
    @harvested_crops = 0
    @gold = 0
  end
  
  def pass_one_year
    @crops += @seedlings
    @seedlings = 0
  end
  
  def sow_seeds
    puts "You sow your seeds..."
    @seedlings += @seeds
    @seeds = 0
    puts "You have #{@seeds} seeds and #{@seedlings} seedlings"
  end
  
  def harvest_crops
    @harvested_crops += @crops
    @crops = 0
  end
  
  def sell_crops
    sale_price = rand(10) + 1
    @gold = sale_price * @harvested_crops
    @harvested_crops = 0
  end
  
  def buy_seeds
  end
end

john = Farmer.new
puts john.seeds
john.sow_seeds
john.pass_one_year
puts john.crops
john.harvest_crops
puts john.harvested_crops
puts "Time to sell"
john.sell_crops
puts "Gold: #{john.gold}"

