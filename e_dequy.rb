number = gets.chomp.to_i
arr = []
number.times do
  item = gets.chomp.split(" ").map{|a| a.to_i}
  arr << item
end

class Snow
  attr_accessor :arr, :group_num
  def initialize(arr)
    self.arr = arr
    self.group_num = 0
  end

  def is_same_group?(point1, point2)
    x1, y1 = point1
    x2, y2 = point2
    return x1 == x2 || y1 == y2
  end

  def find_same_group(point)
    self.arr.each do |a|
      if is_same_group?(point,a)
        self.arr = self.arr - [a]
        self.find_same_group(a)
      end
    end
  end

  def excutor
    while !self.arr.empty?
      self.group_num += 1
      self.find_same_group(self.arr.pop)
    end
    result = [self.group_num - 1, 0].max
    puts result
  end
end

snow = Snow.new(arr)
snow.excutor
