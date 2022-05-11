def caeser_cipher(message, shift_factor)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  result = ''

  message.each_char do |m_char|
    case m_char
    when /[a-z]/
      shifted_index = (alphabet.index(m_char) + shift_factor) % 26

      shifted_char = alphabet[shifted_index]

      result.concat shifted_char
    when /[A-Z]/
      shifted_index = (alphabet.index(m_char.downcase) + shift_factor) % 26

      shifted_char = alphabet[shifted_index]

      result.concat shifted_char.upcase
    when ' '
      result.concat ' '
    else
      result.concat m_char
    end
  end

  result
end

print 'Enter a string to decode: '
message = gets.chomp.to_s
print 'Enter a shift factor: '
shift_factor = gets.chomp.to_i

puts caeser_cipher(message, shift_factor)
