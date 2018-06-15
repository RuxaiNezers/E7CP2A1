a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

b1 = a.map { |x| x + 1 }

b2 = a.map { |x| x.to_f }

b3 = a.map { |x| x.to_s } 

b4 = a.reject { |x| x < 6}

b5 = a.select { |x| x < 5}

b6 = a.inject { |sum, value| sum + value}

b7 = a.group_by {|i| i%2}

b8 = a.group_by {|i,| i<6 || i>6}

print b1
puts " "
print b2
puts " "
print b3
puts " "
print b4
puts " "
print b5
puts " "
print b6
puts " "
print b7
puts " "
print b8
