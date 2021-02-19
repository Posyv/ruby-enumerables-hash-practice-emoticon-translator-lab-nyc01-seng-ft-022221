# require modules here
require 'yaml'
def load_library(file)
  YAML.load_file(file)
end

def get_japanese_emoticon(file,english_emoticon)
  emoticons = load_library(file)
  result = ''
  emoticons.each{|key,value| value[0] == english_emoticon ? result = value[1] : ''  }
end

def get_english_meaning(file,japnese_emoticon)
  emoticons = load_library(file)
  result = ''
  emoticons.each{|key,value| value[1] == japnese_emoticon ? result = key : ''  }
  result
end


puts get_english_meaning("./lib/emoticons.yml", "(Ｔ▽Ｔ)")
