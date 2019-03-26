// Return a hash of unique characters in string

function count(string) {
  result = {};
  string.split('').forEach(function(char) {
    result[char] ? result[char]++ : result[char] = 1;
  });
  return result;
}

console.log(count("aba")); // should equal { a: 2, b: 1 }
console.log(count("")); // should equal []
