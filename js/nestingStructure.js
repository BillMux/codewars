Array.prototype.sameStructureAs = function (other) {
  for (var i = 0; i < this.length; i++) {
    if ((Array.isArray(this[i])) && (Array.isArray(other[i]))) {
      this[i].sameStructureAs(other[i]);
    } else if ((Array.isArray(this[i])) !== (Array.isArray(other[i]))) {
      return false;
    } else { return this.length === other.length };
  };
  return true;
};

console.log([ [ [ ], [ ] ] ].sameStructureAs( [ [ 1, 1 ] ] ),
           ![ [ [ ], [ ] ] ].sameStructureAs( [ [ 1, 1 ] ] )); // false

console.log([ 1, 1, 1 ].sameStructureAs( [ 2, 2, 2 ] ),
            [ 1, 1, 1 ].sameStructureAs( [ 2, 2, 2 ] ) === true);

console.log([ 1, [ 1, 1 ] ].sameStructureAs( [ 2, [ 2, 2 ] ] ),
            [ 1, [ 1, 1 ] ].sameStructureAs( [ 2, [ 2, 2 ] ] ) === true);

console.log([ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2, 2 ], 2 ] ),
           ![ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2, 2 ], 2 ] )); // false

console.log([ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2 ], 2 ] ),
           ![ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2 ], 2 ] )); // false

console.log([ [ [ ], [ ] ] ].sameStructureAs( [ [ [ ], [ ] ] ] ),
            [ [ [ ], [ ] ] ].sameStructureAs( [ [ [ ], [ ] ] ] )); // true
