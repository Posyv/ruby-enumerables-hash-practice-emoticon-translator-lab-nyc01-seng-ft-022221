# require modules here
require 'yaml'
def load_library(file)
  YAML.load_file(file)
end

def get_japanese_emoticon
  hhh.each{|key,value| value[0] == ":$" ? result = value[1] : ''  }
end

def get_english_meaning
  # code goes here
end


puts load_library.keys

puts load_library.values
