MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7',
  '---..' => '8', '----.' => '9', '-----' => '0'
}.freeze

def decode_char(char)
  return ' ' if char == ' '

  MORSE_CODE[char]
end

def decode_word(word)
  word.split.map { |char| decode_char(char) }.join
end

def decode(string)
  string.split('   ').map { |word| decode_word(word) }.join(' ')
end

p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')

# Decodes to => A BOX FULL OF RUBIES
