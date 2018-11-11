// identify the chars that follow a space
// capitalize them
String.prototype.toJadenCase = function() {
  var newString = ''
  var words = this.split(' ').map(function(currentWord) {
    return currentWord.charAt(0).toUpperCase() + currentWord.substr(1)
  });
  return words.join(' ')
};

"How can mirrors be real if our eyes aren't real".toJadenCase()
