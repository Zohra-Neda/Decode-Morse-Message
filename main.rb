


















def decode_word(string)
    string.split('  ').map { |word| word.split.map { |char| decode_char(char) }.join }.join(' ')
  end
  
  def decode(string)
    string.split('   ').map { |word| decode_word(word) }.join(' ')
  end
  
  p decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
  
  # Decodes to => A BOX FULL OF RUBIES