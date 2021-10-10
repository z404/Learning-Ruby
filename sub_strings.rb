print "Enter a string: "
str = gets
print "Enter the number of substrings present in array: "
num = gets.to_i
puts "Enter #{num} substrings"
arr = []
for i in 1..num
    arr.append(gets.chomp)
end

def sub_strings(string, array)
    string = string.split(" ")
    ret_hash = {}
    string.each do |word|
        if array.include?(word)
            puts "#{ret_hash}"
            if ret_hash.fetch(word, nil) == nil
                ret_hash[word] = 1
            else
                ret_hash[word] += 1
            end
        end
    end
    ret_hash
end

puts "Output: #{sub_strings(str,arr)}"

