class DealOfTheDay::CLI
  def call
    
    while input.downcase != 'exit'
      
      puts "Would you like to look at Amazons deals of the day? of Sears deals?(Type 'A')"
      puts "Or Sears deals of the day?(Type 'S')"
      puts "Type exit to quit."
      
      input = gets.chomp
      if input.downcase == "a"
        amazon_deals
        menu(input)
      elsif input.downcase == "s"
        sears_deals
        menu(input)
      else
        puts "Did not understand command."
      end
    end #while loop end
  end # call method end

  def amazon_deals
    puts "Amazons deals here"
  end

  def sears_deals
    puts "Sears deals here"
  end

  def menu(site_choice)
  end
  
end
