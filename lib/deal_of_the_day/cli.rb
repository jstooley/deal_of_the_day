class DealOfTheDay::CLI
  def call(input = "blank")
    
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
      elsif input.downcase != "exit"
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
    input = "blank"
    
    
      
      if site_choice.downcase == "a" 
        until input.downcase == "back" || input.downcase == "exit"
          puts "What Amazon deals do you want more info on?"
          puts "Enter 'back' to choose site again"
          puts "Enter exit to quit"
          input = gets.chomp
          #amazon_deal_info(input)
        end
      else 
        until input.downcase == "back" || input.downcase == "exit"
          puts "What sears deals do you want more info on?"
          puts "Enter 'back' to choose site again"
          puts "Enter exit to quit"
          input = gets.chomp
          #sears_deal_info(input)
        end
      end
  
    
    if input.downcase == "back" # goes back to ask to see amazon of sears deals
      call
    else
      goodbye_message # exits program
    end
    
  end # end menu method

  def goodbye_message
    puts "cya later nerd!"
    exit
  end
  
end
