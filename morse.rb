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

def decode_char(char)
  @morse[char]
end

def decode_word(word)
  final_word = ''
  word.split.each do |char|
    final_word += decode_char(char)
  end
  final_word
end

def decode_message(msg)
  final_msg = ''
  msg.split('   ').each do |word|
    final_msg += decode_word(word)
    final_msg += ' '
  end
  final_msg.chop
end

puts decode_message('-- -.--   -. .- -- .')
