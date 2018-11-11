// split str into array of chars DONE
// for each letter, check if vowel
// if it is, increase vowelCount

function getCount(string) {
  var vowelsCount = 0;
  var vowelsArr = ['a','e','i','o','u'];
  var stringArray = string.split('');

  stringArray.forEach(function(element) {
    console.log(element);
  });

  return vowelsCount;
}

getCount('abcd1234');