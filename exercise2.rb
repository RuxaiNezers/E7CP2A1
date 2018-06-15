nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

b1 = nombres.select {|x| x.length<=5}

b2 = nombres.map {|x| x.downcase! }
print b1
puts ""
print b2
puts ""