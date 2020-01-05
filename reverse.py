import random

numbers = random.sample(range(1,10), 9)
steps = 0

while numbers != sorted(numbers):
    print " ".join(map(str, numbers))
    flipcount = int(raw_input("Reverse how many? "))
    numbers[:flipcount] = reversed(numbers[:flipcount])
    steps += 1

print "Done! That took you %d steps." % steps
