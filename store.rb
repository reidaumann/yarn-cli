require_relative "yarn"

class Store
  def initialize
    @cart = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to the Yarn Store CLI!"
      puts "1. Add some yarn to your cart"
      puts "2. List all yarns"
      puts "3. Exit"

      print "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_yarn
      when 2
        list_yarns
      when 3
        puts "Thank you for visiting the Yarn Store CLI. Happy crafting!"
        break
      else
        puts "Sorry, I don't understand this input. Please select another option."
      end
    end
  end

  private

  def add_yarn
    print "Enter yarn fiber: "
    fiber = gets.chomp
    print "Enter yarn color: "
    color = gets.chomp
    print "Enter the number of skeins you want: "
    number = gets.chomp
    @yarns << Yarn.new(fiber, color, number)
    puts "Yarn added to cart!"
  end

  def list_yarns
    puts "Yarns in your cart:"
    @yarns.each do |yarn|
      puts yarn
    end
  end
end
