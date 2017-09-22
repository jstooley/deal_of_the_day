class DealOfTheDay::CLI
  def call(input = "blank")

    while input.downcase != 'exit'

      puts "Would you like to look at Amazons deals of the day? of Sears deals?(Type 'A')"
      puts "Or Sears deals of the day?(Type 'S')"
      puts "Type exit to quit."

      input = gets.chomp
      if input.downcase == "a"
        deals(DealOfTheDay::AmazonDeals.all_deals)
        menu(input)
      elsif input.downcase == "s"
        deals(DealOfTheDay::SearsDeals.all_deals)
        menu(input)
      elsif input.downcase != "exit"
        puts "Did not understand command."
      end
    end #while loop end
    goodbye
  end # call method end

  def deals(deals)# prints all deals of a chosen site
    @deals = deals
    @deals.each_with_index do |deal, i|
      puts "#{i+1}. #{deal.name}"
    end
  end
  def deal_info(choice)
    @deals[choice.to_i - 1].deal_info # will print the chosen deals info
  end# end of deal_info

  def menu(site_choice)
    input = "blank"

      if site_choice.downcase == "a"
        until input.downcase == "back" || input.downcase == "exit"
          puts "What Amazon deals do you want more info on?(enter number beside name)"
          puts "Enter 'back' to choose site again"
          puts "Enter exit to quit"
          input = gets.chomp
          deal_info(input)
        end
      else
        until input.downcase == "back" || input.downcase == "exit"
          puts "What sears deals do you want more info on?(enter number beside name)"
          puts "Enter 'back' to choose site again"
          puts "Enter exit to quit"
          input = gets.chomp
          deal_info(input)
        end
      end


    if input.downcase == "back" # goes back to ask to see amazon of sears deals
      call
    else
      goodbye # exits program
    end

  end # end menu method

  def goodbye # prints goodbye messages and exits program
    puts "cya later nerd!"
    exit
  end

end
