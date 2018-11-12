function getCount(string) {
  var vowelsCount = 0;
  string.split('').forEach(function(element) {
    if('aeiou'.split('').includes(element)) vowelsCount++;
  });
  return vowelsCount;
}
