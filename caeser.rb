require 'pry-byebug'

def caseser_cipher(string, shift = 1)
  string.split('').map do |character|
    return_value = /[^A-Za-z]/.match(character) ? character : ''
    ordinal = character.ord
    base = (ordinal < 'a'.ord ? 'A'.ord : 'a'.ord)
    return_value = (base + ((ordinal - base + shift) % 26)).chr if return_value == ''
    return_value
  end.join ''
end

stop_loop = false
until stop_loop do
  puts 'please input a string to be converted via caeser cipher'
  user_string = gets.chomp
  puts 'please input a shift factor'
  shift_factor = gets.to_i
  puts caseser_cipher user_string, shift_factor if user_string.class == String
  puts 'continue? y/n'
  stop_loop = gets.chomp.downcase == 'n'
end
