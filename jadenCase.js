// identify the chars that follow a space
// capitalize them
String.prototype.toJadenCase = function() {
  var words = this.split(' ');
  var x = 0;

  while (x < words.length) {
    var currentWord = words[x];
    var capital = currentWord.charAt(0).toUpperCase();
    x++;
  };
};

"How can mirrors be real if our eyes aren't real".toJadenCase()
