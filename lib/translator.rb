# require modules here
require "yaml"

def load_library(library)
  # code goes here
  emoticon_library = YAML.load_file(library)
  hash = {:get_meaning => {}, :get_emoticon => {}}
  emoticon_library.each do |meaning, meaning_values|
    hash[:get_meaning][meaning_values[1]] = meaning
    hash[:get_emoticon][meaning_values[0]] = meaning_values[1]
  end
  hash
end

def get_japanese_emoticon(library, emoticon)
  hash = load_library(library)
  if hash[:get_emoticon].include?(emoticon)
    return hash[:get_emoticon][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
  # code goes here
end

def get_english_meaning(library, emoticon)
  # code goes here
  hash = load_library(library)
  if hash[:get_meaning].include?(emoticon)
    return hash[:get_meaning][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end