# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end
 
def basic_calc
  puts "Press a for add, s for subtract, m for multiply, d for divide"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
 
  case operation
    when "a"
      puts "Enter first number: "
      first_number = gets.to_i
      puts "Enter second number: "
      second_number = gets.to_i
      puts first_number + second_number
    
 
    when "s"
      puts "Enter first number: "
      first_number = gets.to_i
      puts "Enter second number: "
      second_number = gets.to_i
      puts first_number - second_number
    

    when "m"
      puts "Enter first number: "
      first_number = gets.to_i
      puts "Enter second number: "
      second_number = gets.to_i
      puts first_number * second_number
    

    when "d"
      puts "Enter first number: "
      first_number = gets.to_f
      puts "Enter second number: "
      second_number = gets.to_f
        if second_number == 0
          puts "You can't divide by 0"
          puts "Re-enter your second number"
          second_number = gets.to_f
        end
      puts first_number / second_number
    end
end
 
def advanced_calc
  puts "Press p for power and s for square root"
  print "(p)ower, (s)quare root"
  operation = gets.chomp.downcase

  case operation
    when "p"
      puts "Enter first number: "
      first_number = gets.to_i
      puts "Enter second number: "
      second_number = gets.to_i
      puts first_number ** second_number

    when "s"
      puts "Enter number: "
      first_number = gets.to_i
      puts Math.sqrt(first_number)
  end
end
 
# run the app...
 
response = menu
 
while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end
 

  gets

  response = menu
end