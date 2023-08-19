def refrain(lyrics, number_of_times = 1, vibrato = 0, strong = false)
  song_refrain = []
  lyrics += lyrics[lyrics.size - 1] * vibrato
  lyrics.upcase! if strong

  number_of_times.times do
    song_refrain << lyrics
  end

  song_refrain.join(" ")
end

def better_refrain(lyrics, options = { vibrato: 0, number_of_times: 1, strong: false })
  # TODO: implement this better version which breaks argument order dependency
  # create and array to store the end lyrics
  better_song = []
  # add calculation and make it upper case
  lyrics += lyrics[lyrics.size - 1] * options[:vibrato]
  # iterate over number of times to put lyrics inside end array
  lyrics.upcase! if options[:strong]

  # join all together
  options[:number_of_times].times do
    better_song << lyrics
  end
  better_song.join(" ")
end
