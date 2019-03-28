var x = 0;

Array.prototype.sameStructureAs = function (other) {
  for (var i = 0; i < this.length; i++) {
    if ((Array.isArray(this[i])) && (Array.isArray(other[i]))) {
      console.log(`Level ${x}: both are arrays`)
      x++;
      this[i].sameStructureAs(other[i]);
    } else if ((Array.isArray(this[i])) !== (Array.isArray(other[i]))) {
      console.log(`Level ${x}: one is array`)
      return false;
    } else {
      console.log(`Level ${x}: none are arrays`)
      continue;
    };
  };
  return true;
};

console.log([ [ [ ], [ ] ] ].sameStructureAs( [ [ 1, 1 ] ] ),
           ![ [ [ ], [ ] ] ].sameStructureAs( [ [ 1, 1 ] ] )); // false

// console.log([ 1, 1, 1 ].sameStructureAs( [ 2, 2, 2 ] ),
//             [ 1, 1, 1 ].sameStructureAs( [ 2, 2, 2 ] ) === true);

// console.log([ 1, [ 1, 1 ] ].sameStructureAs( [ 2, [ 2, 2 ] ] ),
//             [ 1, [ 1, 1 ] ].sameStructureAs( [ 2, [ 2, 2 ] ] ) === true);
//
// console.log([ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2, 2 ], 2 ] ),
//            ![ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2, 2 ], 2 ] )); // false
//
// console.log([ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2 ], 2 ] ),
//            ![ 1, [ 1, 1 ] ].sameStructureAs( [ [ 2 ], 2 ] )); // false
//
// console.log([ [ [ ], [ ] ] ].sameStructureAs( [ [ [ ], [ ] ] ] ),
//             [ [ [ ], [ ] ] ].sameStructureAs( [ [ [ ], [ ] ] ] )); // true
