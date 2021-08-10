def print_tests
  arr = [1,2,3,4]
  hash = {
    a: 1, b: 2, c: 3, d: 4, e: 5
  }
  
  puts "each vs. my_each", "---", "Array:"
  puts "each"
  arr.each      { |x| p x }
  puts "\nmy_each"
  arr.my_each   { |x| p x }
  
  puts "\nHash:"
  puts "each"
  hash.each     { |k, v| p "#{k} => #{v}" }
  puts "\nmy_each"
  hash.my_each  { |k, v| p "#{k} => #{v}" }
  
  
  puts "\n----", "\neach_with_index vs. my_each_with_index", "---"
  puts "each_with_index"
  puts "arr.each_with_index do |x, i|
    puts \"Index: \#{i}\", \"Item:  \#{x}\"
  end"
  arr.each_with_index do |x, i|
    puts "Index: #{i} -> Item:  #{x}"
  end
  
  puts "\nmy_each_with_index"
  puts "arr.my_each_with_index do |x, i|
    puts \"Index: \#{i}\", \"Item:  \#{x}\"
  end"
  arr.my_each_with_index do |x, i|
    puts "Index: #{i} -> Item:  #{x}"
  end
  
  puts "\n----", "\nselect vs. my_select", "---"
  puts "select"
  puts "arr.select    { |x| x > 5 }"
  pp    arr.select    { |x| x > 2 }
  puts "arr.select"
  pp    arr.select
  
  puts "\nmy_select"
  puts "arr.my_select { |x| x > 5 }"
  pp    arr.my_select { |x| x > 2 }
  puts "arr.my_select"
  pp    arr.my_select
  
  
  puts "\n----", "\nall? vs my_all?", '---', "Array:" 
  puts "arr.all?           { |x| x > 1 }"
  puts  arr.all?           { |x| x > 1 }
  puts "arr.my_all?        { |x| x > 1 }"
  puts  arr.my_all?        { |x| x > 1 }
  puts "arr.all?"
  puts  arr.all?
  puts "arr.my_all?"
  puts  arr.my_all?
  
  puts "\nHash:"
  puts "hash.all?         { |k, v| v > 1 }"
  puts  hash.all?         { |k, v| v > 1 }
  puts "hash.my_all?      { |k, v| v > 1 }"
  puts  hash.my_all?      { |k, v| v > 1 }
  puts "hash.all?"
  puts  hash.all?
  puts "hash.my_all?"
  puts  hash.my_all?
  
  puts "\n----", "\nany? vs my_any?", "---", "Array:"
  puts "arr.any?          { |x| x > 15 }"
  puts  arr.any?          { |x| x > 15 }
  puts "arr.my_any?       { |x| x > 15 }"
  puts  arr.my_any?       { |x| x > 15 }
  puts "arr.any?"
  puts  arr.any?
  puts "arr.my_any?"
  puts  arr.my_any?
  
  puts "\nHash:"
  puts "hash.any?         { |k, v| v > 15 }"
  puts  hash.any?         { |k, v| v > 15 }
  puts "hash.my_any?      { |k, v| v > 15 }"
  puts  hash.my_any?      { |k, v| v > 15 }
  puts "hash.any?"
  puts  hash.any?
  puts "hash.my_any?"
  puts  hash.my_any?
  
  puts "\n----", "\nnone? vs my_none?", "---", "Array:"
  puts "arr.none?         { |x| x > 15 }"
  puts  arr.none?         { |x| x > 15 }
  puts "arr.my_none?      { |x| x > 15 }"
  puts  arr.my_none?      { |x| x > 15 }
  puts "arr.none?"
  puts  arr.none?
  puts "arr.my_none?"
  puts  arr.my_none?
  
  puts "\nHash:"
  puts "hash.none?        { |k, v| v > 15 }"
  puts  arr.none?         { |x| x > 15 }
  puts "hash.my_none?     { |k, v| v > 15 }"
  puts  arr.my_none?      { |x| x > 15 }
  puts "hash.none?"
  puts  arr.none?
  puts "hash.my_none?"
  puts  arr.my_none?
  
  puts "\n----", "\ncount vs my_count", "---", "Array:"
  puts "arr.count         { |x| x > 1 }"
  puts  arr.count         { |x| x > 1 }
  puts "arr.my_count      { |x| x > 1 }"
  puts  arr.my_count      { |x| x > 1 }
  puts "arr.count# => 4"
  puts  arr.count
  puts "arr.my_count# => 4"
  puts  arr.my_count
  
  puts "\nHash:"
  puts "hash.count        { |k, v| v > 1 }"
  puts  hash.count        { |k, v| v > 1 }
  puts "hash.my_count     { |k, v| v > 1 }"
  puts  hash.my_count     { |k, v| v > 1 }
  puts "hash.count"
  puts  hash.count
  puts "hash.my_count"
  puts  hash.my_count
  
  puts "\n----", "\nmap vs my_map", "---", "Array:"
  puts "arr.map           { |x| x * 2 }"
  puts  arr.map           { |x| x * 2 }
  puts "arr.my_map        { |x| x * 2 }"
  puts  arr.my_map        { |x| x * 2 }
  puts "arr.map"
  puts  arr.map
  puts "arr.my_map"
  puts  arr.my_map
  
  puts "\nHash:"
  puts "hash.map          { |k, v| v * 2 }"
  puts  hash.map          { |k, v| v * 2 }
  puts "hash.my_map       { |k, v| v * 2 }"
  puts  hash.my_map       { |k, v| v * 2 }
  puts "hash.map"
  puts  hash.map
  puts "hash.my_map"
  puts  hash.my_map
  
  puts "\n----", "inject vs my_inject", "---", "Array"
  puts "arr.inject         { |sum, x| sum + x }"
  puts  arr.inject         { |sum, x| sum + x }
  puts "arr.my_inject      { |sum, x| sum + x }"
  puts  arr.my_inject      { |sum, x| sum + x }
  puts "arr.inject(1)      { |sum, x| sum + x }"
  puts  arr.inject(1)      { |sum, x| sum + x }
  puts "arr.my_inject(1)   { |sum, x| sum + x }"
  puts  arr.my_inject(1)   { |sum, x| sum + x }
  
  puts "\nHash"
  puts "hash.inject        { |sum, x| sum }"
  puts  hash.inject        { |sum, x| sum }
  puts "hash.my_inject     { |sum, x| sum }"
  puts  hash.my_inject     { |sum, x| sum }
  puts "hash.inject(1)     { |sum, x| sum + x.last }"
  puts  hash.inject(1)     { |sum, x| sum + x.last }
  puts "hash.my_inject(1)  { |sum, x| sum + x.last }"
  puts  hash.my_inject(1)  { |sum, x| sum + x.last }
  
  
  def mult_els src
    return ArgumentError unless src.class.method_defined? :my_inject
    src.my_inject { |sum, x| sum * x }
  end
  
  mult_els(arr)
  mult_els([2,4,5])
  
end 