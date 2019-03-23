function toUnderscore(string) {
  var charArray = string.toString().split('');
  charArray[0] = charArray[0].toLowerCase();
  for (i = 1; i < charArray.length; i++) {
    if (charArray[i] === charArray[i].toUpperCase() &&
    charArray[i] !== charArray[i].toLowerCase()) {
      charArray.splice(i, 1, '_', charArray[i].toLowerCase());
      i++;
    };
  };
  return charArray.join('')
}
//  returns test_controller
toUnderscore('TestController');

// returns movies_and_books
toUnderscore('MoviesAndBooks');

// returns app7_test
toUnderscore('App7Test');

// returns "1"
toUnderscore(1);
