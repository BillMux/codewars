// Deletes all WUBs from song

function songDecoder(song){
  return song.replace(/(WUB)+/g, ' ').trim()
}
