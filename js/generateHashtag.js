function generateHashtag (str) {
  var words = str.split(' ');
  words.forEach(function(word) {
    return word.charAt(0).toUpperCase() + word.substr(1).toLowerCase();
  });
  // words.forEach(function(word) {
  //   word[0].toUpperCase();
  // });
  console.log(words)



  return false;
}

// console.log(generateHashtag(""),
//             generateHashtag("") === false,
//             "Expected an empty string to return false")
//
// console.log(generateHashtag(" ".repeat(200)),
//             generateHashtag(" ".repeat(200)) === false,
//             "Still an empty string")
//
console.log(generateHashtag("do we have a hashtag"),
            generateHashtag("do we have a hashtag") === "#DoWeHaveAHashtag",
            "Expected a Hashtag (#) at the beginning.")
//
// console.log(generateHashtag("Codewars"),
//             generateHashtag("Codewars") === "#Codewars",
//             "Should handle a single word.")
//
// console.log(generateHashtag("Codewars Is Nice"),
//             generateHashtag("Codewars Is Nice") === "#CodewarsIsNice",
//             "Should remove spaces.")
//
// console.log(generateHashtag("Codewars is nice"),
//             generateHashtag("Codewars is nice") === "#CodewarsIsNice",
//             "Should capitalize first letters of words.")
//
// console.log(generateHashtag("code" + " ".repeat(140) + "wars"),
//             generateHashtag("code" + " ".repeat(140) + "wars") === "#CodeWars",
//             "Should ignore multiple spaces")
//
// console.log(generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat"),
//             generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") === false,
//             "Should return false if the final word is longer than 140 chars.")
//
// console.log(generateHashtag("a".repeat(139)),
//             generateHashtag("a".repeat(139)) === "#A" + "a".repeat(138),
//             "Should work")
//
// console.log(generateHashtag("a".repeat(140)),
//             generateHashtag("a".repeat(140)) === false,
//             "Too long")
