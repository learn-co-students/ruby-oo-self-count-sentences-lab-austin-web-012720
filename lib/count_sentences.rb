require 'pry'

class String

  def sentence?
    return self[-1] == "."
  end

  def question?
    return self[-1] == "?"
  end

  def exclamation?
    return self[-1] == "!"
  end

  def count_sentences
    delimiters = ['! ', '. ', '? ']
    return self.split(Regexp.union(delimiters)).length
  end
end