class DealOfTheDay::CLI
  def call
    while input.downcase != 'exit'
      puts "Would you like to look at Amazons deals of the day? of Sears deals?(Type 'A')"
      puts "Or Sears deals of the day?(Type 'S')"
      puts "Type exit to quit."
      input = gets.chomp
      if input.downcase == "a"
        amazon_deals
        amazon_menu
      elsif input.downcase == "s"
        sears_deals
        sears_menu
      else
        puts "Did not understand command."
      end
    end #while loop end
  end # call method end

  def list_deals
  end
  
end
