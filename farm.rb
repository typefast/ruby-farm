#sow seeds
#pass one year
#harvest crops
#sell crops
#gold increases
#buy more seeds - price fluctuates rand
class Farmer

  attr_accessor :seeds, :seedlings, :crops, :harvested_crops, :gold, :seed_price, :sale_price, :cow
  
  def initialize
    @seeds = 5
    @seedlings = 0
    @crops = 0
    @harvested_crops = 0
    @gold = 0
    @seed_price = rand(5) + 1
    @sale_price = rand(10) + 1
    @harvested = false
    @cow = 0
  end
  
  def pass_one_year
    @harvested = false
    @seed_price = rand(5) + 1
    @sale_price = rand(10) + 1
    if @cow > 0
      @crops += @seedlings * @cow
    else
      @crops += @seedlings
    end
    @seedlings = 0
    puts "One year has passed since you sowed your seeds. You have #{@crops} crops and #{@cow} cows."
    puts "seed price is #{@seed_price}, I am paying #{@sale_price} for crops this year."
  end
  
  def sow_seeds
    puts "You sow your seeds..."
    @seedlings += @seeds
    @seeds = 0
    puts "You have #{@seeds} seeds and #{@seedlings} seedlings"
  end
  
  def harvest_crops
    if @harvested == false
    @harvested_crops += @crops
    puts "You have harvested #{@harvested_crops} crops."
    @harvested = true
    else
      puts "You have harvested this years crops"
    end
  end
  
  def sell_crops
    # sale_price = rand(10) + 1
    @gold = @sale_price * @harvested_crops
    @harvested_crops = 0
    puts "You sell your crops and have #{@gold} gold."
  end
  
  def buy_seeds
    # seed_price = rand(5) + 1
    if @gold < @seed_price && @seeds == 0
      puts "Hmm i feel sorry for you, Your not a very good farmer if you can't afford one seed."
      puts "Here is #{@seeds += 1} seed"
    else
    @seeds = @gold / @seed_price
    @gold = @gold - (@seeds * @seed_price )
    puts "You bought #{@seeds} seeds for #{@seed_price * @seeds} gold"
    end
  end
  
  def buy_cow
    if @gold > 500
      @gold -= 500
      puts "You bought a cow"
      puts "Cows multiply your production. Good work sonny."
      if @cow == 0
        @cow += 2
      else
        @cow = @cow + 1
      end
    else
      puts "You need 500 gold to buy a cow, you have #{@gold}"
    end
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
  when "buy cow"
    john.buy_cow
  else 
    puts "You can't do that on a farm."
  end
  
end


