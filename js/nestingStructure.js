// This function determines whether two arrays have the same nesting structures

Array.prototype.sameStructureAs = function (other) {
  if (!Array.isArray(other)) { return false };
  for (var i = 0; i < this.length; i++) {
    if ((Array.isArray(this[i])) && (Array.isArray(other[i]))) {
      if (this[i].length !== other[i].length) { return false };
      return this[i].sameStructureAs(other[i]);
    } else if ((Array.isArray(this[i])) !== (Array.isArray(other[i]))) {
      return false;
    } else { continue; };
  };
  return true;
};
