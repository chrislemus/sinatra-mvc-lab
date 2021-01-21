class PigLatinizer
  def piglatinize(words)
    words.split(' ').map {|word|
      consonants = word[/^[bcdfghjklmnpqrstvwxzy]+/i]
      consonants ? "#{word.slice(consonants.length, word.length)}#{consonants}ay" : "#{word}way"
    }.join(' ')
  end
end