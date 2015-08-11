// You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.
//
// INPUT SAMPLE:
// File containing a list of sorted integers, comma delimited, one per line. E.g.
// 1,1,1,2,2,3,3,4,4
// 2,3,4,5,5
//
// OUTPUT SAMPLE:
// Print out the sorted list with duplicates removed, one per line.
// E.g.
// 1,2,3,4
// 2,3,4,5

function uniqueEls(line) {
  var numbers = line.split(",");
  var seen = {};
  var result = [];
  numbers.forEach(function(num) {
    seen[num] = true;
  });
  for (n in seen) {
    result.push(n);
  }

  return result.join(",");
}

var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line != "") {
      console.log(uniqueEls(line));
    }
});
