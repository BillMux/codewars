// identify the chars that follow a space
// capitalize them
String.prototype.toJadenCase = function() {
  return this.split(' ').map(function(word) {
    return word.charAt(0).toUpperCase() + word.substr(1)
  }).join(' ');
};

"How can mirrors be real if our eyes aren't real".toJadenCase()
