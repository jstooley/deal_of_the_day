require_relative '../deal_of_the_day/print_deal_info/printing.rb'
class DealOfTheDay::AmazonDeals
  include PrintDeals
  attr_accessor :name, :price, :percent_off

  def self.all_deals
    #returns the deals
    self.scraped_deals
  end

  def self.scraped_deals
    deals = []

    deals << self.scrape_amazon

    deals
  end

  def self.scrape_amazon
    doc = Nokogiri::HTML(open("https://amazon.com/gp/goldbox/ref=nav_cs_gb"))
    binding.pry
  end
end
