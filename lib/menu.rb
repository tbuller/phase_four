menu = {
  "Fish and chips" => 10,
  "Pho" => 12,
  "Burger" => 11,
  "Soda" => 3,
  "Panini" => 7,
  "Tagine" => 14
}

class Order
  def initialize(io)
    @io = io
  end

  def selection
    menu = {
      "Fish and chips" => 10,
      "Pho" => 12,
      "Burger" => 11,
      "Soda" => 3,
      "Panini" => 7,
      "Tagine" => 14
    }
    total = 0
    orders = []
    @io.puts menu.map { |k, v| "#{k} £#{v}" } 
    while true
      @io.puts "Please make your choice"
      input = @io.gets.chomp
      break if input == "done"
      total += menu[input]
      orders << input
    end  
    orders.map { |o| print "#{o}, £#{menu[o]}\n" }
    "Your total is £#{total}"
  end
end