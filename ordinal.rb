def suffix(i)
  last_2 = i % 100
  if ((11..13).include? last_2)
    return "th"
  else
    last_1 = i % 10
    case last_1
    when 1
      return "st"
    when 2
      return "nd"
    when 3
      return "rd"
    else
      return "th"
    end
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
