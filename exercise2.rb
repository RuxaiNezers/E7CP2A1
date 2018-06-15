nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

b1 = nombres.select {|x| x.length<=5}

b2 = nombres.map {|x| x.downcase }

b3 = nombres.select{|x| x.chr.eql?('P') } #/P./.match(x) 

b4 = nombres.map {|x| x.length}

b5 = nombres.map {|x| x.gsub(/[aeiou]/, '') }

print b1
puts ""
print b2
puts ""
print b3
puts ""
print b4
puts ""
print b5