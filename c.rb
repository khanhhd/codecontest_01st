number = gets.chomp.to_i
arr = gets.chomp.split(" ")

arr = arr.first(number)
arr = arr.map{|a| a.to_i}
sorted_arr = arr.sort{|a,b| a <=> b}

length = arr.length

dif_count = 0
arr.each_with_index do |a,i|
  dif_count +=1 if a != sorted_arr[i]
end

if dif_count == 0 || dif_count == 2
  puts "YES"
else
  puts "NO"
end

