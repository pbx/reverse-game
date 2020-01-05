numbers = (1..9).sort_by{ rand }
steps = 0

while numbers != numbers.sort
  puts numbers.join(" ")
  print "Reverse how many? "
  flipcount = gets.to_i
  numbers[0...flipcount] = numbers[0...flipcount].reverse
  steps += 1
end

print "Done! That took you #{steps} steps.\n"
