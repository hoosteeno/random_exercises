def p2k(p)
 return 0.454 * p
end

puts "how many pounds?"
p = gets.chomp.to_f
puts "#{p2k(p)} kilos"
