class DealOfTheDay::AmazonDeals
  attr_accessor :name, :price, :percent_off

  def self.all_deals
    #will list deals
    puts "Amazon deals here"
    ['TV','Computer']
  end
end
