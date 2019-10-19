require 'colorize'
require 'readline'

module TravelInspiration
    class CLI

        def start
            list_commands
        end

        def list_themes
            puts "Hello! Which travel inspiration will you like to explore for your next trip?".green.bold
            puts "\nPlease select a theme from 1 - 12".blue.bold
            select_theme
        end

        def select_theme
            input = nil

            while true # user_input != "exit"
                input = Readline.readline("Select theme 🛣 ", true).strip

                goodbye if input.downcase === "exit"
                input = input.to_i

                if input > 0 && input < 13
                    puts "--------------------------------------------".black.on_white #horizontal divider
                    puts "You put #{input}\n".green.bold
                else
                    puts "That selection is not valid. Please select a theme from 1 - 12, or type exit."
                end
            end
        end
    end
end

puts TravelInspiration::CLI.new.start
