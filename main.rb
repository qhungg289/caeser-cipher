def caeser_cipher(message, shift_factor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  result = ''
  shifted_char = ''

  message.each_char do |m_char|
    case m_char
    when /[a-z]/
      shifted_index = (alphabet.index(m_char) + shift_factor) % 26

      shifted_char = alphabet[shifted_index]
    when /[A-Z]/
      shifted_index = (alphabet.index(m_char.downcase) + shift_factor) % 26

      shifted_char = alphabet[shifted_index].upcase
    when ' '
      shifted_char = ' '
    else
      shifted_char = m_char
    end

    result.concat shifted_char
  end

  result
end

print 'Enter a string to decode: '
message = gets.chomp.to_s
print 'Enter a shift factor: '
shift_factor = gets.chomp.to_i

puts caeser_cipher(message, shift_factor)
