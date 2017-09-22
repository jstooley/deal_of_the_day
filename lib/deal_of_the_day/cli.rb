class DealOfTheDay::CLI
  def call(input = nil)
    
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
    goodbye_message
  end # call method end

  def amazon_deals
    puts "Amazons deals here"
  end

  def sears_deals
    puts "Sears deals here"
  end

  def menu(site_choice)
    input = nil
    while input.downcase != "back" && input.downcase != "exit"
      
      if site_choice.downcase == "a" 
        puts"What Amazon deals do you want more info on?"
        input = gets.chomp
        amazon_deal_info(input)
      else 
        puts "What sears deals do you want more info on?"
        input = gets.chomp
        sears_deal_info(input)
      end
    end # end while loop
    if input.downcase == "back" # goes back to ask to see amazon of sears deals
      call
    else
      call(input) # exits program
    end
  end # end menu method

  def goodbye_message
    puts "cya later nerd!"
  end
  
end
