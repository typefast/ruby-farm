#sow seeds
#pass one year
#harvest crops
#sell crops
#gold increases
#buy more seeds - price fluctuates rand
class Farmer

  attr_accessor :seeds, :seedlings, :crops, :gold
  
  def initialize
    @seeds = 5
    @seedlings = 0
    @crops = 0
    @gold = 0
  end
  
  def pass_one_year
  end
  
  def sow_seeds
    puts "You sow your seeds..."
    @seedlings += @seeds
    @seeds = 0
    puts "You have #{@seeds} seeds and #{@seedlings} seedlings"
  end
  
  def harvest_crops
  end
  
  def sell_crops
  end
  
  def buy_seeds
  end
end

john = Farmer.new
puts john.seeds
john.sow_seeds

