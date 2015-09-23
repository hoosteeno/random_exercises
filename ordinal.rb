def suffix(i)
  last_digit = i % 10
  case last_digit
  when 1
    if i % 100 == 11
      return "th"
    end
    return "st"
  when 2
    return "nd"
  when 3
    return "rd"
  else
    return "th"
  end
end

def test()
  (suffix(54) == "th" && suffix(311) == "th" && suffix(2) == "nd" && suffix(221) == "st" && suffix(33) == "rd")
end

def usage
  puts "You must enter an integer."
  exit
end

def handle(input)

  if (m = /^(\d+)$/i.match(input))
    number = m[1].to_i
    return "Ordinal: #{number}#{suffix(number)}"

  elsif (input == "test")
    return "Test result: #{test()}"

  else
    usage
  end

end

print "Enter an integer: "
input = gets.chomp
puts handle(input)
