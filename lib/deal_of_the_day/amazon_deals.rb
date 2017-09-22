require_relative '../deal_of_the_day/print_deal_info/printing.rb'
class DealOfTheDay::AmazonDeals
  include PrintDeals
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
end
