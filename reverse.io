// REVERSE game in Io (http://iolanguage.com/)
// See http://e-scribe.com/news/193

numbers := list(1, 2, 3, 4, 5, 6, 7, 8, 9) shuffle
count := 0
while (numbers != numbers clone sort,
  count = count + 1
  writeln(numbers join(" "))
  "How many to swap? " print
  howmany := File standardInput readLine asNumber
  slice := numbers slice(0, howmany - 1) reverse
  numbers = slice appendSeq(numbers slice(howmany))
)
writeln("Done! That took you ", count, " steps.")