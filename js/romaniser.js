// Converts a roman numeral into an integer

function solution(roman) {
  count = 0;
  const values = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  for(var i = 0; i < roman.length; i++) {
    var number = values[roman[i]];
    var next = values[roman[i + 1]];
    if(number < next) { count += (next - number); i++; }
    else { count += number }
  };
  return count
}
