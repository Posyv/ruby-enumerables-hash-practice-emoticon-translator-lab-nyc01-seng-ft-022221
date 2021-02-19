# require modules here
require 'yaml'
def load_library
  emoticons = YAML.load_file('emoticons.yml')
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end


puts load_library.keys

puts load_library.values
