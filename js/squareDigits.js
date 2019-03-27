// This function converts num to a number made of squares of
// the digits of num

function squareDigits(num) {
  return parseInt(('' + num).split('').map(x => x ** 2).join(''));
}
