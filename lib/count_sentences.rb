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
    

    splits = []
      if self.question?
        splits = self.split(/[.?!]/)
      elsif self.exclamation?
        splits = self.split(/[.?!]/)
      elsif self.sentence?
        splits = self.split(/[.?!]/)
      end

      noemptys = splits.reject { |c| c.empty? }
    return noemptys.count



  end
end
