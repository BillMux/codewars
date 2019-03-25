// Adds up the digits of the number n
// Does this repeatedly until the sum of digits is a single digit number
// Return the final number

function digitalRoot(n) {
  var digits = ("" + n).split("").map(Number);
  var sum = digits.reduce(function(a, b) { return a + b; });
  if(sum > 9) { return digitalRoot(sum) } else { return sum };
}
