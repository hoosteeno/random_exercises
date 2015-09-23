def from_c (deg)
  return "#{(deg * 9 / 5 + 32).round(2)}F"
end

def from_f (deg)
  return "#{((deg - 32) * 5 / 9).round(2)}C"
end

def test()
  f = from_c(100.0)
  c = from_f(212.0)
  unless (c == "100.0C" and f == "212.0F")
    return "failed: There is a math problem."
  end
  return "success!"
end

def usage
  puts "You must enter a temperature to be converted, e.g. 46F or 18c"
  exit
end

def handle(input)

  # if temp+scale, e.g. 99f, convert
  if (m = /^(\d+)([fc])$/i.match(input))
    temp = m[1].to_f
    initial_scale = m[2]
    if (initial_scale == "F")
      return from_f(temp)
    else
      return from_c(temp)
    end

  elsif (input == "TEST")
    return test()

  else
    usage
  end

end

print "Enter a temperature to convert (e.g. 25C or 93F): "
input = gets.chomp.upcase
puts "#{input} is #{handle(input)}"
