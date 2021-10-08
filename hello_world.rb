puts "Hello World"
newstr = gets

puts "You entered #{newstr}"

if 5.eql?(5.0)
    puts "equal"
else
    puts "not equal"
end

puts 6.times 

def my_method
    "hel"
end

friends = [1,2,3,4]

friends = friends.map { |friend| friend - 7 }

puts friends