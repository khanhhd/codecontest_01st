def cal(arr)
  money = {"25" => 0,
    "50" => 0,
    "100" => 0
  }
  can = true
  arr.each do |a|
    a = a.to_i
    sym = a.to_s
    money[sym] += 1
    case a
    when 50
      if money["25"] >= 1
        money["25"] = money["25"] -1
      else
        can = false
      end
    when 100
      if (money["50"] >=1  && money["25"] >= 1)
        money["50"] = money["50"] - 1
        money["25"] = money["25"] - 1
      elsif money["25"] >=3
        money["25"] = money["25"] - 3
      else
        can = false
      end
    end
  end
  if can
    puts "YES"
  else
    puts "NO"
  end
end

number = gets.chomp.to_i
arr = gets.chomp.split(" ")

arr = arr.first(number)

cal(arr)
