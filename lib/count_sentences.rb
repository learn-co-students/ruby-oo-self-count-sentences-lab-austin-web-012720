require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    #The [] in the regex lets it look for individual characters and the + means ore more sequential instances of
    word_array = self.split(/[?.!]+/)
    #binding.pry
    word_array.size
  end
end