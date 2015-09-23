def foobarer(i)
  if (i % 3 == 0)
    if (i % 5 == 0)
      return "foobar"
    end
    return "foo"
  elsif (i % 5 == 0)
    return "bar"
  else
    return i.to_s
  end
end

def test()
  puts "foobarer(33): #{foobarer(33)}"
  puts "foobarer(10): #{foobarer(10)}"
  puts "foobarer(15): #{foobarer(15)}"
  puts "foobarer(11): #{foobarer(11)}"
  return (foobarer(33) == "foo" && foobarer(10) == "bar" && foobarer(15) == "foobar" && foobarer(11) == "11")
end

def usage
  puts "You must enter a positive integer."
  exit
end

def handle(input)

  if (m = /^(\d+)$/i.match(input))
    number = m[1].to_i
    puts "You asked for it!"
    (1..number).each do |i|
      puts foobarer(i)
    end

  elsif (input == "test")
    puts "Test result: #{test()}"

  else
    usage
  end

end

print "Enter a positive integer: "
input = gets.chomp
handle(input)
