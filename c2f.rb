def convert_c(c)
  temp = ((c + 32) * 9 / 5).round(2)
  return "#{temp}F"
end

def convert_f(f)
  temp = ((f - 32) * 5 / 9).round(2)
  return "#{temp}C"
end

def usage
  puts "You must enter a temperature and a scale, e.g. 46F or 18c"
  exit
end

def handle(string)
  if (m = /(\d+)([fc])/i.match(string))
    temp = m[1]
    fn = "convert_#{m[2].downcase}"
    return send(fn, temp.to_f)
  elsif (m = /(\d+)/.match(string))
    return convert_c(m[1].to_f)
  else
    usage
  end
end

print "Enter a temperature to convert (e.g. 25C or 93F): "
input = gets.chomp
puts "#{input.upcase} is #{handle(input)}"
