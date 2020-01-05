$numbers = range(1, 9);
shuffle($numbers);
$sorted = $numbers;
sort($sorted);
$steps = 0;

while ($numbers != $sorted)
    {
    print implode(" ", $numbers) . "\n";
    print "Reverse how many? ";
    $flipcount = (int)trim(fgets(STDIN));
    array_splice($numbers, 0, $flipcount, array_reverse(array_slice($numbers, 0, $flipcount)));
    $steps++;
    }

print "Done! That took you $steps steps.\n";
