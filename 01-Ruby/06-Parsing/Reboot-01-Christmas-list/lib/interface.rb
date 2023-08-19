require 'csv'
# XMAS List Step1 and Step2
# 1. Welcome the user
puts "Welcome to the XMAS list 2023 edition"
# 2. Four options: [ list | add | delete | quit ]
# 3. Loop and display the menu with options to the user
#    until the user wants to quit

# Refactoring
# helper methods

# Gift list is an Hash now, need to change the method
def display_list(list) # list is the parameter
  list.each_with_index do |gift, index|
    # you want to simulate a checkbox if the gifth is bought or not
    # checkbox = ''
    # if gift[1]
    #   checkbox = '[X]'
    # else
    #   checkbox = '[ ]'
    # end
    checkbox = gift[1] ? '[X]' : '[ ]'
    puts "#{index + 1} - #{checkbox} #{gift[0]}"
  end
end


choice = nil

gift_list = {} # Now it's an Hash
# { book: false, macbook: false } # => hashes with symbol keys
# { 'book' => false, 'macbook' => true } # => hashes with string keys

# Load existing data and we put them inside the empty gift_list
# PARSING FROM CSV
filepath = '/lib/data/gifts.csv'

CSV.foreach(filepath, col_sep: ',', quote_char: '"', headers: :first_row) do |row|
  # TODO: build new gift from information stored in each row
  # each row of the csv behaves like an array BUT when you have headers
  # they behaves like HASHES
  # row['name']
  # row['bought']
  puts row
end

until choice == 'quit'
  puts "Which action? [ list | add | delete | mark | quit ]"
  choice = gets.chomp
  # 4. Conditionals: the behaviour changes according to the option selected
  #    if...elsif...else
  #    case...when...else
  case choice
  when 'list'
    # 1 - First gift
    # 2 - Second one ...
    unless gift_list.empty?
      puts "All the gifts in list for now:"
      display_list(gift_list)
    else
      puts "No gifts in the list yet"
    end
  when 'add'
    puts "Which gift do you wanna add?"
    new_gift = gets.chomp
    # Add a new key/value pair to the gift_list
    # { 'book' => false, 'macbook' => false }
    gift_list[new_gift] = false
  when 'delete'
    puts "Which gift do you want to delete from the list? (index)"
    display_list(gift_list)
    index = gets.chomp.to_i - 1
    gift_keys = gift_list.keys # => returns the list of all the keys in the hash in ARRAY
    gift_to_delete = gift_keys[index]
    # in Hashes the method delete takes the key
    gift_list.delete(gift_to_delete)
    # Remember that we delete from an Hash by Key
    # .keys: tip
  when 'mark'
    puts "Which gift have you already bought?"
    display_list(gift_list)
    puts "Index?"
    index = gets.chomp.to_i - 1
    gift_keys = gift_list.keys # => returns the array containing all the keys in the Hash
    key_to_mark = gift_keys[index]
    gift_list[key_to_mark] = true
  when 'quit'
    puts "Bye bye"
  else
    puts "Sorry, not a valid option. Try again"
  end
  # STORING IN THE CSV what we have in the gift_list
  CSV.open(filepath, 'wb', col_sep: ',', force_quotes: true, quote_char: '"') do |csv|
    # We had headers to the CSV
    csv << ['name', 'bought']
    #TODO: store each gift
    # csv itself behaves like an array
    # rows of the csvs are arrays
    # csv << [..., ...]
  end
end
