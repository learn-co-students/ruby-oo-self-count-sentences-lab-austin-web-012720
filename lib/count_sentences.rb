require 'pry'

class String

  def sentence?
   self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
   sentence_array = self.split(/[.?!]/) # => ["one", " two", " three"]
   sentence_array.delete_if{|sentence| sentence.empty?} # deletes empty segments
   sentence_array.length # => 3
  end
end

