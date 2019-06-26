'use strict';

describe('Rot13', function() {
  var Rot13 = require('../src/rot13');
  console.log(Rot13);
  var rot13;

  it('returns "n" when passed "a"', function() {
    rot13 = new Rot13('a');
    console.log(rot13);
    expect(rot13).toEqual('n');
  });
});
