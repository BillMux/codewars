function comp(array1, array2) {
  if (array1 === null || array2 === null) {
    return false;
  };
  for (i = 0; i < array1.length; i++) {
    for (j = 0; j < array2.length; j++) {
      if (array1[i] ** 2 === array2[j]) {
        array2.splice(j, j + 1);
      };
    };
  };
  return (array2.length === 0);
};
