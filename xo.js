function XO(str) {
  var xCount = 0;
  var oCount = 0;
  var array = str.split('');
  array.forEach(function(letter) {
    if(letter.toLowerCase() === 'x') xCount++;
    if(letter.toLowerCase() === 'o') oCount++;
  });
  return(xCount === oCount)
}
XO('xxxm')
