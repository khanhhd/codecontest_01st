def is_same_group?(point1, point2)
  x1, y1 = point1
  x2, y2 = point2
  return x1 == x2 || y1 == y2
end

number = gets.chomp.to_i
arr = []
number.times do
  item = gets.chomp.split(" ").map{|a| a.to_i}
  arr << item
end

tmp_arr = arr
group_num = 0;

while tmp_arr.length > 0
  group_num += 1
  groups= [tmp_arr.pop]
  begin
    add_points = []
    groups.each do |grouped_point|
      tmp_arr.each do |ungrouped_point|
        if is_same_group?(ungrouped_point, grouped_point)
          add_points << ungrouped_point
        end
      end
    end
    tmp_arr = tmp_arr - add_points
    groups = add_points
  end while !add_points.empty?
end

puts group_num - 1

