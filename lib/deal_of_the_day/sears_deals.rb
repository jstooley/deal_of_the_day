class DealOfTheDay::SearsDeals
  attr_accessor :name, :price, :percent_off

  def self.all_deals
    #will list deals
    puts "Sears deals here"
    ['clothing','watch']
  end
end
