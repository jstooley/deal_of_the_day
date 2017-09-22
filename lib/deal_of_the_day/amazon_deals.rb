class DealOfTheDay::AmazonDeals
  attr_accessor :name, :price, :percent_off

  def self.all_deals
    #will list deals
    tv = self.new
    tv.name = 'TV'
    tv.price = "$130"
    tv.percent_off = "30%"
    computer = self.new
    computer.name = "Comp"
    computer.price = "$130"
    computer.percent_off = "25%"
    puts "Amazon deals here"
    [tv,computer]
  end

  def deal_info
    puts "#{self.name}"
    puts "#{self.price}"
    puts "#{self.percent_off}"    
  end
end
