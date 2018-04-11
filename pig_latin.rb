# Method name: pig_latin
# Inputs:      A string representing a single word (i.e., no spaces)
# Returns:     The word translated into "pig latin"
# Prints:      Nothing

# Note #1
# There are two rules for translating something into "pig latin":
#   1. If a word begins with a consonant or sequence of consonants, move the
#      sequence of consonants  to the end of the word and then append "ay"
#   2. If a word begins with a vowel, just append "ay"
#
# See: http://en.wikipedia.org/wiki/Pig_Latin#Rules
#
# Here are some examples:
# pig_latin("happy") == "appyhay"

def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  ind = word.index(/[aeiou]/)

  if vowels.include?(word[0])
    word.delete(" ") << "ay"
  else
    if ind == nil
      word << "ay"
    else
      final_word = word.chars.drop(ind) << word.chars.slice(0..ind-1) << "ay"
      final_word.join
    end
  end
  end

p pig_latin("egg")
p pig_latin("ruby")
p pig_latin("glove")
p pig_latin("qwqwqwqwqqqwqwqe")
p pig_latin("nmnmnmlklkkl")


if __FILE__ == $PROGRAM_NAME
  p pig_latin("happy") == "appyhay"
  p pig_latin("duck")  == "uckday"
  p pig_latin("glove") == "oveglay" # Notice what happened to "gl"

  p pig_latin("egg")   == "eggay"
  p pig_latin("inbox") == "inboxay"
  p pig_latin("eight") == "eightay"
end
