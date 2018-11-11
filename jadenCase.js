// identify the chars that follow a space
// capitalize them
String.prototype.toJadenCase = function() {
  var words = this.split(' ');
  var x = 0;
  // console.log(words.charAt(0).toUpperCase());
  while (x < words.length) {
    console.log(words.charAt(0).toUpperCase());
    x++;
  };

  // console.log(words)
};
"How can mirrors be real if our eyes aren't real".toJadenCase()
