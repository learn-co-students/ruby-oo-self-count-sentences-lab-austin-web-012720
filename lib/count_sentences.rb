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
    num_of_sentences = 0    
    array = self.split(" ")
      array.each do |i| 
      if i.sentence? || i.question? || i.exclamation?
        num_of_sentences += 1
      end
    end
    num_of_sentences
  end
  
end