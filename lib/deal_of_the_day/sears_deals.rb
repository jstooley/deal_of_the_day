require_relative '../deal_of_the_day/print_deal_info/printing.rb'
class DealOfTheDay::SearsDeals
  include PrintDeals
  attr_accessor :name, :price, :percent_off

  def self.all_deals
    #will list deals
    puts "Sears deals here"
    clothing = self.new
    clothing.name = 'shirt'
    clothing.price = "$40"
    clothing.percent_off = "10%"
    watch = self.new
    watch.name = "Fossil"
    watch.price = "$200"
    watch.percent_off = "30%"
    [clothing,watch]
  end
end
