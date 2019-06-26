'use strict';

function rot13(str) {
  output = '';
  for (i = 0; i < str.length; i++) {
    charCode = str.charCodeAt(i);
    lowerAtoM = 97 <= charCode && charCode <= 109;
    lowerNtoZ = 110 <= charCode && charCode <= 122;
    upperAtoM = 65 <= charCode && charCode <= 77;
    upperNtoZ = 78 <= charCode && charCode <= 90;
    if (lowerAtoM || upperAtoM) {
      output += String.fromCharCode(charCode + 13);
    } else if (lowerNtoZ || upperNtoZ) {
      output += String.fromCharCode(charCode - 13);
    } else { output += str[i]; };
  }
  return output;
};

module.exports = Rot13;
