@morse = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

#Create a method to decode a Morse code character, takes a string parameter, and return the corresponding character in uppercase (e.g. decode_char(".-") returns "A").

def decode_char(char)
    @morse[char]
end

#Create a method to decode an entire word in Morse code, takes a string parameter, and return the string representation. Every character in a word will be separated by a single space (e.g. decode_word("-- -.--") returns "MY").

def decode_word(word)
    final_word = ''
    word.split.each do |char|
        final_word += decode_char(char)
    end
    final_word
end

#Create a method to decode the entire message in Morse code, takes a string parameter, and return the string representation. Every word will be separated by 3 spaces (e.g.

def decode_message(msg)
    final_msg = ''
    msg.split('   ').each do |word|
        final_msg += decode_word(word) + ' '
    end
    final_msg.chop
end
