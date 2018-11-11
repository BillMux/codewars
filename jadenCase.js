// identify the chars that follow a space
// capitalize them
String.prototype.toJadenCase = function() {
  var words = this.split(' ');
  var x = 0;
  var newString = ''
  words.forEach(function(currentWord) {
    var capital = currentWord.charAt(0).toUpperCase();
    var wordWithoutFirst = currentWord.substr(1);
    var newWords = capital + wordWithoutFirst
    newString += newWords + ' '
    x++;
  });
  return newString.substr(0, newString.length-1)
};

"How can mirrors be real if our eyes aren't real".toJadenCase()
