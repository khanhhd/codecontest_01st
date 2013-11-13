input = "+HuyND\nHuyND:hello\n+input\n+KhanhLD\n-KhanhLD\nTienNA:hi\n-TienNA"


class QA
  attr_accessor :members
  def initialize()
    @members = []
  end
  def cal_traffic(cm)
    total = 0
    if cm[0] == "+"
      self.members += [cm[1..(cm.length-1)]]
    elsif cm[0] == "-"
      self.members -= [cm[1..(cm.length-1)]]
    else
      index = cm.index(':')
      length = cm.length - index - 1
      total = total + self.members.length * length
    end
    total
  end
end

cal = 0
a_ins = QA.new
arr = gets.split("\n")
puts arr
arr.each do |a|
  val = a_ins.cal_traffic(a)
  puts a_ins.members
  puts val
  cal += val
end
puts cal
