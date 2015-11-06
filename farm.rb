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
    puts "One year has passed since you sowed your seeds. You have #{@crops} crops"
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
    puts "You have harvested #{@harvested_crops} crops."
  end
  
  def sell_crops
    sale_price = rand(10) + 1
    @gold = sale_price * @harvested_crops
    @harvested_crops = 0
    puts "You sell your crops and have #{@gold} gold."
  end
  
  def buy_seeds
    seed_price = rand(10.0) + 1
    @seeds = @gold / seed_price
    @gold = @gold - (@seeds * seed_price )
    puts "You bought #{@seeds} seeds for #{seed_price} gold"
  end
end

john = Farmer.new
# john.sow_seeds
# john.pass_one_year
# john.harvest_crops
# puts "Time to sell"
# john.sell_crops
# john.buy_seeds

while true
print "What action do you take?"
  action = gets.chomp.downcase
  
  case action
  when "sow seeds"
    john.sow_seeds
  when "pass year"
    john.pass_one_year
  when "harvest crops"
    john.harvest_crops
  when "sell crops"
    john.sell_crops
  when "buy seeds"
    john.buy_seeds
  else 
    puts "You can't do that on a farm."
  end
  
end


