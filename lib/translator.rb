# require modules here
require 'yaml'
def load_library(file)
  emoticons = YAML.load_file(file)
  new_emoticons = {}
  emoticons.each do |key,value|
    new_emoticons[key] = { english: value[0], japanese: value[1]}
  end
  new_emoticons
end

def get_japanese_emoticon(file,english_emoticon)
  emoticons = load_library(file)
  result = ''
  emoticons.each{|key,value| value[0] == english_emoticon ? result = value[1] : ''  }
  result
end

def get_english_meaning(file,japnese_emoticon)
  emoticons = load_library(file)
  result = ''
  emoticons.each{|key,value| value[1] == japnese_emoticon ? result = key : ''  }
  result
end


puts get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")

puts get_english_meaning("./lib/emoticons.yml", "☜(⌒▽⌒)☞")

puts get_japanese_emoticon("./lib/emoticons.yml", ":)")

puts get_japanese_emoticon("./lib/emoticons.yml", ":o")
